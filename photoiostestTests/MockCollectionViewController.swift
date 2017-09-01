//
//  MockCollectionViewController.swift
//  photoiostest
//
//  Created by mac on 9/1/17.
//  Copyright © 2017 mac. All rights reserved.
//

import UIKit
import XCTest

class MockCollectionViewController : CollectionViewControllerProtocol {
    
    var expectationForSetNavigationTitle:XCTestExpectation?
    var expectationForSetSectionInset:XCTestExpectation?
    var expectationForSetupCollectionViewCellToUseMaxWidth:XCTestExpectation?
    
    func setNavigationTitle(_ title:String) -> Void {
        expectationForSetNavigationTitle?.fulfill()
    }
    
    func setSectionInset(top:Float, left:Float, bottom:Float, right:Float) -> Void {
        expectationForSetSectionInset?.fulfill()
    }
    
    func setupCollectionViewCellToUseMaxWidth() -> Void {
        expectationForSetupCollectionViewCellToUseMaxWidth?.fulfill()
    }
    
}
