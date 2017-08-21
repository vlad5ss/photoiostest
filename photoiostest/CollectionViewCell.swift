//
//  CollectionViewCell.swift
//  photoiostest
//
//  Created by mac on 8/21/17.
//  Copyright © 2017 mac. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var captionLabel: UILabel!
    @IBOutlet weak var shotDetailsLabel: UILabel!
    
    var viewModel:CollectionViewCellViewModel?
    
    func setup() {
        viewModel?.setup()
    }
}

extension CollectionViewCell : CollectionViewCellProtocol {
    
    func loadImage(resourceName:String) {
        imageView.image = UIImage(named: resourceName)
    }
    
    func setCaption(captionText:String) {
        captionLabel.text = captionText
    }
    
    func setShotDetails(shotDetailsText:String) {
        shotDetailsLabel.text = shotDetailsText
    }
    
}

