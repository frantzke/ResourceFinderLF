//
//  SchoolPin.swift
//  ResourceFinderLF
//
//  Created by Lukas on 2020-04-27.
//  Copyright © 2020 SAP. All rights reserved.
//

import Foundation
import MapKit

class SchoolPin: NSObject, MKAnnotation {
    let title: String?
    var subtitle: String?
    let coordinate: CLLocationCoordinate2D
    let school: School
    var offers = [Offer]()
    
    
    init(title: String?, school: School, coordinate: CLLocationCoordinate2D) {
        self.title = title
        //subtitle = offerDetails?
        self.school = school
        self.coordinate = coordinate
        super.init()
    }
    
    
}
