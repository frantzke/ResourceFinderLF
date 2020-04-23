//
//  SchoolOfferManagerTests.swift
//  ResourceFinderLFTests
//
//  Created by Lukas on 2020-04-23.
//  Copyright © 2020 SAP. All rights reserved.
//

import XCTest
@testable import ResourceFinderLF

class SchoolOfferManagerTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testHasSchoolOfferings() {
        let expect = expectation(description: "GET School Offerings")
        //SchoolOffers(LATITUDE=,LONGITUDE=,DISTANCEFORSEARCH=200,ELIGIBILITYCAT='''36a00731-7f07-42a8-a141-f4303d41a10b''',ASSISTSUBTYPE='''03487ac3-e0db-43af-852b-2ebf198e3a0f''')/Set
        SchoolOfferManager.getSchoolOffers(lat: 42.3600825, long: -71.0588801, dist: 200) {
            fetchedSchoolOffers in
            expect.fulfill()
            if let schoolOffers = fetchedSchoolOffers {
                XCTAssertGreaterThan(schoolOffers.count, 0)
            } else {
                XCTFail()
            }
        }
        wait(for: [expect], timeout: 15.0)
    }

}
