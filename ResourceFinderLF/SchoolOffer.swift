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
    var id: String
    var from: String?
    var to: String?
    var mon: Bool?
    var tue: Bool?
    var wed: Bool?
    var thu: Bool?
    var fri: Bool?
    var sat: Bool?
    var sun: Bool?
    var startDate: String?
    var endDate: String?
    var name: String?
    var elegibilityCategory: String?
    var description: String?
    var assistanceSubtype: String?
    var addressId: String?
    var street: String?
    var city: String?
    var stateCode: String?
    var zip: String?
    var lat: Double
    var long: Double
    var locationId: String?
    var locationTypeId: String?
    var locationDescription: String?
    var locationType: String?
    var assistanceType: String?
    var assistanceTypeDescription: String?
    var pickup: Bool?
    var delivery: Bool?
    var website: String?
    var offerDetails: String?
    var contactName: String?
    var contactEmail: String?
    var contactTitle: String?
    
    //MARK: Calculated Properties
    var address: String {
        return "\(street ?? ""), \(city ?? "") \(stateCode ?? "")"
    }
    var how: String {
        var howStr = ""
        howStr += pickup ?? false ? "Pickup " : ""
        howStr += delivery ?? false ? "Delivery": ""
        return howStr
    }
    var who: String {
        return self.elegibilityCategory ?? ""
    }
    var when: String {
        var whenStr = "\(assistanceSubtype ?? "") ("
        whenStr += mon ?? false ? "Mon, " : ""
        whenStr += tue ?? false ? "Tue, " : ""
        whenStr += wed ?? false ? "Wed, " : ""
        whenStr += thu ?? false ? "Thu, " : ""
        whenStr += fri ?? false ? "Fri, " : ""
        whenStr += sat ?? false ? "Sat, " : ""
        whenStr += sun ?? false ? "Sun, " : ""
        whenStr.removeLast(2)
        whenStr += ")"
        
        return whenStr
    }
    var time: String {
        return "\(from ?? "") - \(to ?? "")"
    }
    
    
    init(id: String, lat: Double, long: Double) {
        self.id = id
        self.lat = lat
        self.long = long
    }
}
