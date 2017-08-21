//
//  CollectionViewSectionHeader.swift
//  photoiostest
//
//  Created by mac on 8/21/17.
//  Copyright © 2017 mac. All rights reserved.
//

import UIKit

class CollectionViewSectionHeader: UICollectionReusableView {
    
    @IBOutlet weak var title: UILabel!
    
    var viewModel:CollectionViewSectionHeaderViewModel?
    
    func setup() {
        viewModel?.setup()
    }
}

extension CollectionViewSectionHeader : CollectionViewSectionHeaderProtocol {
    
    func setHeaderText(text:String) {
        title?.text = text
    }
    
}

