//
//  OfferPin.swift
//  ResourceFinderLF
//
//  Created by Lukas on 2020-04-24.
//  Copyright © 2020 SAP. All rights reserved.
//

import Foundation
import MapKit

class OfferPin: NSObject, MKAnnotation {
    let title: String?
    var subtitle: String?
    let coordinate: CLLocationCoordinate2D
    let schoolOffer: SchoolOffer
    
    
    init(title: String?, schoolOffer: SchoolOffer, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.schoolOffer = schoolOffer
        self.coordinate = coordinate
        super.init()
    }
    
    
}
