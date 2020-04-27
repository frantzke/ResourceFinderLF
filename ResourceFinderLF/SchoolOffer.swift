//
//  SchoolOffer.swift
//  ResourceFinderLF
//
//  Created by Lukas on 2020-04-23.
//  Copyright © 2020 SAP. All rights reserved.
//

import Foundation

class SchoolOffer {
    //MARK: Backend Properties
    //Offer
    var offer: Offer
//    var id: String
//    var from: String?
//    var to: String?
//    var mon: Bool?
//    var tue: Bool?
//    var wed: Bool?
//    var thu: Bool?
//    var fri: Bool?
//    var sat: Bool?
//    var sun: Bool?
//    var startDate: String?
//    var endDate: String?
//    var elegibilityCategory: String?
//    var description: String?
//    var assistanceSubtype: String?
//    var pickup: Bool?
//    var delivery: Bool?
//    var offerDetails: String?
//    var assistanceType: String?
//    var assistanceTypeDescription: String?
    
    //School
    var school: School
//    var name: String?
//    var addressId: String?
//    var street: String?
//    var city: String?
//    var stateCode: String?
//    var zip: String?
//    var lat: Double
//    var long: Double
//    var locationId: String?
//    var locationTypeId: String?
//    var locationDescription: String?
//    var locationType: String?
//    var website: String?
//    var contactName: String?
//    var contactEmail: String?
//    var contactTitle: String?
    
    //MARK: Calculated Properties
    var address: String {
        return school.address
    }
//    var how: String {
//        var howStr = ""
//        howStr += offer.pickup ?? false ? "Pickup " : ""
//        howStr += offer.delivery ?? false ? "Delivery": ""
//        return howStr
//    }
    var who: String {
        return self.offer.elegibilityCategory ?? ""
    }
    var when: String {
        var whenStr = "\(offer.assistanceSubtype ?? "") ("
        whenStr += offer.mon ?? false ? "Mon, " : ""
        whenStr += offer.tue ?? false ? "Tue, " : ""
        whenStr += offer.wed ?? false ? "Wed, " : ""
        whenStr += offer.thu ?? false ? "Thu, " : ""
        whenStr += offer.fri ?? false ? "Fri, " : ""
        whenStr += offer.sat ?? false ? "Sat, " : ""
        whenStr += offer.sun ?? false ? "Sun, " : ""
        whenStr.removeLast(2)
        whenStr += ")"
        
        return whenStr
    }
    var time: String {
        return "\(offer.from ?? "") - \(offer.to ?? "")"
    }
    
    
    init(school: School, offer: Offer) {
        self.school = school
        self.offer = offer
    }
}
