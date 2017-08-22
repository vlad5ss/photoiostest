//
//  CollectionViewControllerProtocol.swift
//  photoiostest
//
//  Created by mac on 8/22/17.
//  Copyright © 2017 mac. All rights reserved.
//

import Foundation

protocol CollectionViewControllerProtocol : class {
    func setNavigationTitle(_ title:String) -> Void
    func setSectionInset(top:Float, left:Float, bottom:Float, right:Float) -> Void
    func setupCollectionViewCellToUseMaxWidth() -> Void
}

