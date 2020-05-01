//
//  SchoolPin.swift
//  ResourceFinderLF
//
//  Created by Lukas on 2020-04-27.
//  Copyright © 2020 SAP. All rights reserved.
//

import Foundation
import MapKit
import SAPFiori

class SchoolPin: NSObject, MKAnnotation {
    let title: String?
    var subtitle: String? {
        if isAvailableToday {
            return "Available"
        } else {
            return "Not Available"
        }
    }
    let coordinate: CLLocationCoordinate2D
    let school: School
    var offers = [Offer]()
    var isAvailableToday: Bool {
        let availableOffers = offers.filter {
            !$0.isOfferExpired
        }
        return availableOffers.count > 0
    }
    var markerTintColor: UIColor {
        if isAvailableToday {
            return .preferredFioriColor(forStyle: .positive)
        } else {
            return .preferredFioriColor(forStyle: .negative)
        }
    }
    
    init(title: String?, school: School, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.school = school
        self.coordinate = coordinate
        super.init()
    }
}
