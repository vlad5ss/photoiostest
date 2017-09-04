//
//  MockCollectionViewSectionHeaderViewModel.swift
//  photoiostest
//
//  Created by mac on 9/5/17.
//  Copyright © 2017 mac. All rights reserved.
//

import Foundation
import XCTest

class MockCollectionViewSectionHeaderViewModel : CollectionViewSectionHeaderViewModel {
    
    var setupExpectation:XCTestExpectation?
    
    override func setup() {
        
        setupExpectation?.fulfill()
    }
    
}
