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
        
        let urlSting = serviceRoot +  "/SchoolOffers(LATITUDE=\(String(lat)),LONGITUDE=\(String(long)),DISTANCEFORSEARCH=\(String(dist)),ELIGIBILITYCAT=%27%27%2736a00731-7f07-42a8-a141-f4303d41a10b%27%27%27,ASSISTSUBTYPE=%27%27%2703487ac3-e0db-43af-852b-2ebf198e3a0f%27%27%27)/Set"
        let url = URL(string: urlSting)!
        
        Alamofire.request(url)
        .validate(contentType: ["application/json"])
        .responseJSON { response in
            guard response.result.isSuccess, let responseValue = response.result.value else {
                print("Error while fetching projects: \(String(describing: response.result.error))")
                callback(nil)
                return
            }
            //print(responseValue)
            
            let jsonResult = JSON(responseValue)
            var fetchedSchoolOffers = [SchoolOffer]()
            
            // Convert JSON SchoolOffer Array to Swift SchoolOffer Array
            if let jsonSchoolOffers = jsonResult["value"].array {
                for jsonSchoolOffer in jsonSchoolOffers {
                    let schoolOffer = self.jsonToSchoolOffer(jsonSchoolOffer)
                    fetchedSchoolOffers.append(schoolOffer)
                }
            }
            
            //Sort by lastAccessed
            //let sortedProjects = fetchedProjects.sorted(by: { $0.lastAccessed!.compare($1.lastAccessed!) == .orderedDescending })
            
            callback(fetchedSchoolOffers)
        }
    }
    
    static func jsonToSchoolOffer(_ jOffer: JSON) -> SchoolOffer {
        let offer = SchoolOffer(id: jOffer["ID"].stringValue, lat: jOffer["LAT"].doubleValue, long: jOffer["LONG"].doubleValue)
        offer.from = jOffer["TIMEFROM"].string
        offer.to = jOffer["TIMETO"].string
        offer.name = jOffer["NAME"].string
        offer.description = jOffer["DESCRIPTION"].string
        
        return offer
    }
    
    
}
