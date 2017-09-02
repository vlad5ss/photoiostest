//
//  MockCollectionViewCell.swift
//  photoiostest
//
//  Created by mac on 9/2/17.
//  Copyright © 2017 mac. All rights reserved.
//

import Foundation
import XCTest

class MockCollectionViewCell : CollectionViewCellProtocol {
    
    var expectationForLoadImage:(XCTestExpectation, String?)?
    var expectationForSetCaption:(XCTestExpectation, String?)?
    var expectationForSetupShotDetails:(XCTestExpectation, String?)?
    
    func loadImage(resourceName:String) {
        guard let (expectation, expectedValue) = self.expectationForLoadImage else {
            return
        }
        
        if let expectedValue = expectedValue {
            if (resourceName.compare(expectedValue) != .orderedSame) {
                return
            }
        }
        
        expectation.fulfill()
    }
    
    func setCaption(captionText:String) {
        guard let (expectation, expectedValue) = self.expectationForSetCaption else {
            return
        }
        
        if let expectedValue = expectedValue {
            if (captionText.compare(expectedValue) != .orderedSame) {
                return
            }
        }
        
        expectation.fulfill()
    }
    
    func setShotDetails(shotDetailsText:String) {
        guard let (expectation, expectedValue) = self.expectationForSetupShotDetails else {
            return
        }
        
        if let expectedValue = expectedValue {
            if (shotDetailsText.compare(expectedValue) != .orderedSame) {
                return
            }
        }
        
        expectation.fulfill()
    }
    
}

