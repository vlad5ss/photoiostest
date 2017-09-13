//
//  CollectionViewCellTests.swift
//  photoiostest
//
//  Created by mac on 9/14/17.
//  Copyright © 2017 mac. All rights reserved.
//

import XCTest

class CollectionViewCellTests: XCTestCase {
    
    private var validPhoto:Photo?
    
    let imageNameKey = "imageName"
    let apertureKey = "aperture"
    let shutterSpeedKey = "shutterSpeed"
    let isoKey = "iso"
    let commentKey = "comment"
    
    override func setUp() {
        super.setUp()
        
        var validPhotoDictionary1: [String : AnyObject]?
        validPhotoDictionary1 = [String : AnyObject]()
        validPhotoDictionary1![imageNameKey] = "1" as AnyObject
        validPhotoDictionary1![apertureKey] = "f2.0" as AnyObject
        validPhotoDictionary1![shutterSpeedKey] = "1/250" as AnyObject
        validPhotoDictionary1![isoKey] = "100" as AnyObject
        validPhotoDictionary1![commentKey] = "Test photo" as AnyObject
        
        validPhoto = Photo(validPhotoDictionary1)
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    
}
