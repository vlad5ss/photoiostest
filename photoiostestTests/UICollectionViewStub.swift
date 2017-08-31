//
//  UICollectionViewStub.swift
//  photoiostest
//
//  Created by mac on 8/31/17.
//  Copyright © 2017 mac. All rights reserved.
//

import UIKit

class UICollectionViewStub: UICollectionView {
    
    init() {
        super.init(frame: CGRect.zero, collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func dequeueReusableCell(withReuseIdentifier identifier: String, for indexPath: IndexPath) -> UICollectionViewCell {
        return CollectionViewCell()
    }
    
    override func dequeueReusableSupplementaryView(ofKind elementKind: String, withReuseIdentifier identifier: String, for indexPath: IndexPath) -> UICollectionReusableView {
        return CollectionViewSectionHeader()
    }
    
}
