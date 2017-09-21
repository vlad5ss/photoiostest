//
//  CollectionViewModelTests.swift
//  photoiostest
//
//  Created by mac on 9/1/17.
//  Copyright © 2017 mac. All rights reserved.
//

import XCTest

class CollectionViewModelTests: XCTestCase {
    
    fileprivate var mockCollectionViewController:MockCollectionViewController?
    
    override func setUp() {
        super.setUp()
        mockCollectionViewController = MockCollectionViewController()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
}

// MARK: initialization tests
extension CollectionViewModelTests {
    
    func testInit_ValidView_InstantiatesObject() {
        let viewModel = CollectionViewModel(view:mockCollectionViewController!)
        XCTAssertNotNil(viewModel)
    }
    
    func testInit_ValidView_CopiesViewToIvar() {
        let viewModel =  CollectionViewModel(view:mockCollectionViewController!)
        
        if let lhs = mockCollectionViewController, let rhs = viewModel.view as? MockCollectionViewController {
            XCTAssertTrue(lhs === rhs)
        }
    }
    
    func testInit_ValidView_AlbumIVarIsNotNil() {
        let viewModel =  CollectionViewModel(view:mockCollectionViewController!)
        XCTAssertNotNil(viewModel.photoAlbum)
    }
    
}

// MARK: performInitialViewSetup tests
extension CollectionViewModelTests {
    
    func testPerformInitialViewSetup_Calls_SetNavigationTitle_OnCollectionViewController() {
        let expectation = self.expectation(description: "expected setNavigationTitle() to be called")
        mockCollectionViewController!.expectationForSetNavigationTitle = expectation
        
        let viewModel = CollectionViewModel(view:mockCollectionViewController!)
        viewModel.performInitialViewSetup()
        
        self.waitForExpectations(timeout: 1.0, handler: nil)
        
    }
    
    func testPerformInitialViewSetup_Calls_SetSectionInset_OnCollectionViewController() {
        let expectation = self.expectation(description: "expected setSectionInset() to be called")
        mockCollectionViewController!.expectationForSetSectionInset = expectation
        
        let viewModel = CollectionViewModel(view:mockCollectionViewController!)
        viewModel.performInitialViewSetup()
        
        self.waitForExpectations(timeout: 1.0, handler: nil)
        
    }



}
