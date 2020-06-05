//
//  Offer.swift
//  ResourceFinderLF
//
//  Created by Lukas on 2020-04-27.
//  Copyright © 2020 SAP. All rights reserved.
//

import Foundation

class Offer {
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
    var elegibilityCategory: String?
    var description: String?
    var assistanceSubtype: String
    var offerDetails: String?
    var assistanceType: String?
    var assistanceTypeDescription: String?
    var addressId: String
    //MARK: Calculated Properties
    var stringToTime: DateFormatter {
        let stringToTime = DateFormatter()
        stringToTime.dateStyle = .none
        stringToTime.dateFormat = "HH:mm:ss"
        return stringToTime
    }
    var timeToString: DateFormatter {
        let timeToString = DateFormatter()
        timeToString.dateStyle = .none
        timeToString.dateFormat = "h:mm a"
        return timeToString
    }
    var when: String {
        var type: String?
        if self.assistanceType != "Food" {
            type = self.assistanceType
        } else {
            type = self.assistanceSubtype
        }
        var whenStr = "\(type ?? "") ("
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
        if let fromTime = stringToTime.date(from: from ?? ""), let toTime = stringToTime.date(from: to ?? "") {
            let fromStr = timeToString.string(from: fromTime)
            let toStr = timeToString.string(from: toTime)
            return "\(fromStr) - \(toStr)"
        }
        return "\(from ?? "") - \(to ?? "")"
    }
    var sortOrder: Int {
        switch assistanceSubtype {
        case "Breakfast":
            return 0
        case "Snack":
            return 1
        case "Lunch":
            return 2
        case "Dinner":
            return 3
        default:
            return 4
        }
    }
    var weekAvailablility: [Bool?] {
        return [sun, mon, tue, wed, thu, fri, sat]
    }
    var isAvailableToday: Bool {
        let calendar = Calendar.current
        let componentsSet: Set<Calendar.Component> = [ .weekday ]
        let now = Date()
        let nowComp = calendar.dateComponents(componentsSet, from: now)
        //weekday: Sun = 1, Mon = 2, ..., Sat = 7
        if let weekDay = nowComp.weekday,
            let availableWeekDay = weekAvailablility[weekDay - 1],
            availableWeekDay == true {
            let df = DateFormatter()
            df.dateFormat = "HH:mm:ss"
            let nowStr = df.string(from: now)
            if let toStr = self.to {
                let res = nowStr < toStr 
                return res
            }
        }
        return false
    }
//    var isOfferExpired: Bool {
//        let today = Date()
//        
//        return false
//    }
    
    init(id: String, addressId: String, type: String) {
        self.id = id
        self.addressId = addressId
        self.assistanceSubtype = type
    }
}
