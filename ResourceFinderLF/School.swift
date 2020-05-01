//
//  School.swift
//  ResourceFinderLF
//
//  Created by Lukas on 2020-04-27.
//  Copyright © 2020 SAP. All rights reserved.
//

import Foundation

struct School: Hashable {
    //MARK: Backend Properties
    var name: String
    var addressId: String
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
    var website: String?
    var contactName: String?
    var contactEmail: String?
    var contactTitle: String?
    var pickup: Bool?
    var delivery: Bool?
    var elegibilityCategory: String?
    var startDate: String?
    var endDate: String?
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
        return elegibilityCategory ?? ""
    }
    var startDateValue: Date? {
        if let dateStr = startDate, dateStr != "" {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-dd"
            return dateFormatter.date(from: dateStr)
        }
        return nil
    }
    var endDateValue: Date? {
        if let dateStr = endDate, dateStr != "" {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-dd"
            return dateFormatter.date(from: dateStr)
        }
        return nil
    }
    var datesInterval: String {
        let df = DateFormatter()
        df.dateStyle = .short
        df.timeStyle = .none
        df.dateFormat = "MMM d"
        let start = df.string(from: startDateValue ?? Date())
        let end = df.string(from: endDateValue ?? Date())
        return "\(start) to \(end)"
    }
}
