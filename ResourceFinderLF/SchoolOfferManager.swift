//
//  SchoolOfferManager.swift
//  ResourceFinderLF
//
//  Created by Lukas on 2020-04-23.
//  Copyright © 2020 SAP. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON
import MapKit

class SchoolOfferManager {
    
    static let serviceRoot = "https://sap4kids-prod-sap4kids.cfapps.us10.hana.ondemand.com/public/map"
    //Dev URL: https://sap4good-dev-sap4kids-srv.cfapps.us10.hana.ondemand.com/map
    
    //Call backend for SchoolOffers. Return SchoolPins array, or in case of error nil
    static func getSchoolPins(lat: Double, long: Double, dist: Int, callback: @escaping ([SchoolPin]?) -> Void ) {
        let urlString = serviceRoot +  "/SchoolOffers(LATITUDE=\(String(lat)),LONGITUDE=\(String(long)),DISTANCEFORSEARCH=\(String(dist)))/Set"
        
        // header to be sent in the request
        let headers: HTTPHeaders = [
            "Accept": "*/*",
            "Accept-Encoding": "gzip, deflate, br",
            "Connection": "keep-alive"
        ]
        
        print("Getting School Offers From: ", urlString)
        let url = URL(string: urlString)!
        Alamofire.request(url, method: .get, headers: headers)
        .validate(contentType: ["application/json;odata.metadata=minimal"])
        .responseJSON { response in
            //Handle Error
            guard response.result.isSuccess, let responseValue = response.result.value else {
                print("Error while fetching projects: \(String(describing: response.result.error))")
                callback(nil)
                return
            }
            //Convert JSON to Swift Readable Object
            let jsonResult = JSON(responseValue)
            var schoolPins = [SchoolPin]()
            guard let jsonSchoolOffers = jsonResult["value"].array else {
                //If no value array, return empty array
                callback([SchoolPin]())
                return
            }
            
            // Convert JSON SchoolOffer Array to Swift SchoolPins Array
            let today = Date()
            let searchLocation = CLLocation(latitude: lat, longitude: long)
            for jsonSchoolOffer in jsonSchoolOffers {
                let schoolOffer = self.jsonToSchoolOffer(jsonSchoolOffer)
                //Filter out offers where end date is after todays date.
                let endDate: Date
                if let date = schoolOffer.school.endDateValue {
                    endDate = date
                } else {
                    var components = DateComponents()
                    components.setValue(1, for: .day)
                    endDate = Calendar.current.date(byAdding: components, to: Date()) ?? Date()
                }
                if endDate.compare(today) == .orderedDescending {
                    //Check if School is already in SchoolPins
                    if let index = schoolPins.firstIndex(where: { $0.school == schoolOffer.school }) {
                        //If School already in SchoolPins: Append offer to existing SchoolPin and update SchoolPins
                        let schoolPin = schoolPins[index]
                        schoolPin.offers.append(schoolOffer.offer)
                        schoolPins[index] = schoolPin
                    } else {
                        //If School not in School Pins: Create new schoolPin, append offer, and add to SchoolPins
                        let schoolLocation = CLLocation(latitude: schoolOffer.school.lat, longitude: schoolOffer.school.long)
                        let schoolPin = SchoolPin(
                            title: schoolOffer.school.name,
                            school: schoolOffer.school,
                            coordinate: CLLocationCoordinate2D(latitude: schoolOffer.school.lat, longitude: schoolOffer.school.long))
                        schoolPin.distance = searchLocation.distance(from: schoolLocation)
                        schoolPin.offers.append(schoolOffer.offer)
                        schoolPins.append(schoolPin)
                    }
                }
            }
            
            //TODO: Use Sets to improve runtime

            //Sort Pins by distance
            schoolPins.sort {
                $0.distance ?? 0 < $1.distance ?? 0
            }
            callback(schoolPins)
        }
    }
    
    static func jsonToSchoolOffer(_ jSchoolOffer: JSON) -> SchoolOffer {
        let offer = Offer(id: jSchoolOffer["ID"].stringValue, addressId: jSchoolOffer["ADDRESS_ID"].stringValue, type: jSchoolOffer["ASSISTANCESUBTYPE"].stringValue)
        offer.from = jSchoolOffer["TIMEFROM"].string
        offer.to = jSchoolOffer["TIMETO"].string
        offer.mon = jSchoolOffer["AVAILABLEMON"].bool
        offer.tue = jSchoolOffer["AVAILABLETUE"].bool
        offer.wed = jSchoolOffer["AVAILABLEWED"].bool
        offer.thu = jSchoolOffer["AVAILABLETHR"].bool
        offer.fri = jSchoolOffer["AVAILABLEFRI"].bool
        offer.sat = jSchoolOffer["AVAILABLESAT"].bool
        offer.sun = jSchoolOffer["AVAILABLESUN"].bool
        offer.description = jSchoolOffer["DESCRIPTION"].string
        offer.assistanceType = jSchoolOffer["ASSISTANCETYPE"].string
        offer.assistanceTypeDescription = jSchoolOffer["ASSISTANCETYPEDESCRIPTION"].string
        offer.offerDetails = jSchoolOffer["OFFERDETAILS"].string
        
        let school = School(
            name: jSchoolOffer["NAME"].stringValue,
            addressId: jSchoolOffer["ADDRESS_ID"].stringValue,
            street: jSchoolOffer["STREET"].string,
            city: jSchoolOffer["CITY"].string,
            stateCode: jSchoolOffer["STATECODE"].string,
            zip: jSchoolOffer["ZIP"].string,
            lat: jSchoolOffer["LAT"].doubleValue,
            long: jSchoolOffer["LONG"].doubleValue,
            locationId: jSchoolOffer["LOCATION_ID"].string,
            locationTypeId: jSchoolOffer["LOCATIONTYPE_ID"].string,
            locationDescription: jSchoolOffer["LOCATIONDESCRIPTION"].string,
            locationType: jSchoolOffer["LOCATIONTYPE"].string,
            website: jSchoolOffer["WEBSITEURL"].string,
            contactName: jSchoolOffer["CONTACTNAME"].string,
            contactEmail: jSchoolOffer["CONTACTEMAIL"].string,
            contactTitle: jSchoolOffer["CONTACTTITLE"].string,
            pickup: jSchoolOffer["PICKUPIND"].bool,
            delivery: jSchoolOffer["DELIVERYIND"].bool,
            elegibilityCategory: jSchoolOffer["ELIGIBILITYCATEGORY"].string,
            startDate: jSchoolOffer["STARTDATE"].string,
            endDate: jSchoolOffer["ENDDATE"].string)

        let schoolOffer = SchoolOffer(school: school, offer: offer)
        return schoolOffer
    }
    
    
}
