//
//  MockCollectionViewCellViewModel.swift
//  photoiostest
//
//  Created by mac on 9/3/17.
//  Copyright © 2017 mac. All rights reserved.
//

import Foundation
import XCTest

class MockCollectionViewCellViewModel : CollectionViewCellViewModel {
    
    var setupExpectation:XCTestExpectation?
    
    override func setup() {
        setupExpectation?.fulfill()
    }
    
    
}

