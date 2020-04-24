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

class SchoolOfferManager {
    
    static let serviceRoot = "https://sap4good-dev-sap4kids-srv.cfapps.us10.hana.ondemand.com/map"
    
    static func getSchoolOffers(lat: Double, long: Double, dist: Int, callback: @escaping ([SchoolOffer]?) -> Void ) {
        //let eligibilityCat = "36a00731-7f07-42a8-a141-f4303d41a10b"
        //let assistSubType = "03487ac3-e0db-43af-852b-2ebf198e3a0f"
        //let params="?$top=10&$select=TIMEFROM,TIMETO,NAME,DESCRIPTION,LAT,LONG,OFFERDETAILS"
        let urlString = serviceRoot +  "/SchoolOffers(LATITUDE=\(String(lat)),LONGITUDE=\(String(long)),DISTANCEFORSEARCH=\(String(dist)),ELIGIBILITYCAT=%27%27%2736a00731-7f07-42a8-a141-f4303d41a10b%27%27%27,ASSISTSUBTYPE=%27%27%2703487ac3-e0db-43af-852b-2ebf198e3a0f%27%27%27)/Set"
        
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
            guard response.result.isSuccess, let responseValue = response.result.value else {
                print("Error while fetching projects: \(String(describing: response.result.error))")
                callback(nil)
                return
            }
            
            let jsonResult = JSON(responseValue)
            var fetchedSchoolOffers = [SchoolOffer]()
            
            // Convert JSON SchoolOffer Array to Swift SchoolOffer Array
            if let jsonSchoolOffers = jsonResult["value"].array {
                for jsonSchoolOffer in jsonSchoolOffers {
                    let schoolOffer = self.jsonToSchoolOffer(jsonSchoolOffer)
                    fetchedSchoolOffers.append(schoolOffer)
                }
            }
            
            callback(fetchedSchoolOffers)
        }
    }
    
    static func jsonToSchoolOffer(_ jOffer: JSON) -> SchoolOffer {
        let offer = SchoolOffer(id: jOffer["ID"].stringValue, lat: jOffer["LAT"].doubleValue, long: jOffer["LONG"].doubleValue)
        offer.from = jOffer["TIMEFROM"].string
        offer.to = jOffer["TIMETO"].string
        offer.mon = jOffer["AVAILABLEMON"].bool
        offer.tue = jOffer["AVAILABLETUE"].bool
        offer.wed = jOffer["AVAILABLEWED"].bool
        offer.thu = jOffer["AVAILABLETHR"].bool
        offer.fri = jOffer["AVAILABLEFRI"].bool
        offer.sat = jOffer["AVAILABLESAT"].bool
        offer.sun = jOffer["AVAILABLESUN"].bool
        offer.startDate = jOffer["STARTDATE"].string
        offer.startDate = jOffer["ENDDATE"].string
        offer.name = jOffer["NAME"].string
        offer.elegibilityCategory = jOffer["ELIGIBILITYCATEGORY"].string
        offer.description = jOffer["DESCRIPTION"].string
        offer.assistanceSubtype = jOffer["ASSISTANCESUBTYPE"].string
        offer.addressId = jOffer["ADDRESS_ID"].string
        offer.street = jOffer["STREET"].string
        offer.city = jOffer["CITY"].string
        offer.stateCode = jOffer["STATECODE"].string
        offer.zip = jOffer["ZIP"].string
        offer.locationId = jOffer["LOCATION_ID"].string
        offer.locationTypeId = jOffer["LOCATIONTYPE_ID"].string
        offer.locationDescription = jOffer["LOCATIONDESCRIPTION"].string
        offer.locationType = jOffer["LOCATIONTYPE"].string
        offer.assistanceType = jOffer["ASSISTANCETYPE"].string
        offer.assistanceTypeDescription = jOffer["ASSISTANCETYPEDESCRIPTION"].string
        offer.pickup = jOffer["PICKUPIND"].bool
        offer.delivery = jOffer["DELIVERYIND"].bool
        offer.website = jOffer["WEBSITEURL"].string
        offer.offerDetails = jOffer["OFFERDETAILS"].string
        offer.contactName = jOffer["CONTACTNAME"].string
        offer.contactEmail = jOffer["CONTACTEMAIL"].string
        offer.contactTitle = jOffer["CONTACTTITLE"].string

        return offer
    }
    
    
}
