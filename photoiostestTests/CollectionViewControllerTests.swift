//
//  CollectionViewControllerTests.swift
//  photoiostest
//
//  Created by mac on 9/8/17.
//  Copyright © 2017 mac. All rights reserved.
//

import XCTest

class CollectionViewControllerTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testViewDidLoad_Calls_PerformInitialSetup_OnViewModel() {
        
        let expectation = self.expectation(description: "expected performInitialViewSetup() to be called")
        
        let collectionViewController = CollectionViewController()
        
        let viewModel = MockCollectionViewModel(view:collectionViewController)
        viewModel.performInitialViewSetupExpectation = expectation
        
        collectionViewController.viewModel = viewModel
        
        collectionViewController.viewDidLoad()

    }}
