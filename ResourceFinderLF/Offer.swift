//
//  Offer.swift
//  ResourceFinderLF
//
//  Created by Lukas on 2020-04-27.
//  Copyright © 2020 SAP. All rights reserved.
//

import Foundation

class Offer {
    //Backend Properties
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
    var elegibilityCategory: String?
    var description: String?
    var assistanceSubtype: String
    var offerDetails: String?
    var assistanceType: String?
    var assistanceTypeDescription: String?
    var addressId: String
    //Calculated Properties
    var when: String {
        var whenStr = "\(assistanceSubtype) ("
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
    
    init(id: String, addressId: String, type: String) {
        self.id = id
        self.addressId = addressId
        self.assistanceSubtype = type
    }
}
