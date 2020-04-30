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
        whenStr += mon ?? false ? "Mo, " : ""
        whenStr += tue ?? false ? "Tu, " : ""
        whenStr += wed ?? false ? "We, " : ""
        whenStr += thu ?? false ? "Th, " : ""
        whenStr += fri ?? false ? "Fr, " : ""
        whenStr += sat ?? false ? "Sa, " : ""
        whenStr += sun ?? false ? "Su, " : ""
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
