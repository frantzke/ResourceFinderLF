//
//  SchoolOffer.swift
//  ResourceFinderLF
//
//  Created by Lukas on 2020-04-23.
//  Copyright © 2020 SAP. All rights reserved.
//

import Foundation

class SchoolOffer {
    var school: School
    var offer: Offer
    
    init(school: School, offer: Offer) {
        self.school = school
        self.offer = offer
    }
}
