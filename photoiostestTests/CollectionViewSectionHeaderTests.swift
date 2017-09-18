//
//  CollectionViewSectionHeaderTests.swift
//  photoiostest
//
//  Created by mac on 9/17/17.
//  Copyright © 2017 mac. All rights reserved.
//

import XCTest

class CollectionViewSectionHeaderTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSetup_ValidViewModel_Calls_Setup_OnViewModel() {
        
        let expectation = self.expectation(description: "expected setup() to be called")
        
        let sectionHeader = CollectionViewSectionHeader()
        sectionHeader.title = UILabelStub()
        
        let viewModel = MockCollectionViewSectionHeaderViewModel(model:"ABCD")
        viewModel!.setupExpectation = expectation
        
        sectionHeader.viewModel = viewModel
        
        sectionHeader.setup()
        
        self.waitForExpectations(timeout: 1.0, handler: nil)
    }
    
}

