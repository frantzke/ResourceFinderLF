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
        if isOfferAvailableToday {
            return "Available Today"
        } else {
            return "Not Available Today"
        }
    }
    let coordinate: CLLocationCoordinate2D
    let school: School
    var offers = [Offer]()
    var isOfferAvailableToday: Bool {
        let availableOffers = offers.filter {
            $0.isAvailableToday
        }
        return availableOffers.count > 0
    }
    var markerTintColor: UIColor {
        if isOfferAvailableToday {
            return .preferredFioriColor(forStyle: .positive)
        } else {
            return .preferredFioriColor(forStyle: .negative)
        }
    }
    var distance: Double?
    
    init(title: String?, school: School, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.school = school
        self.coordinate = coordinate
        super.init()
    }
}
