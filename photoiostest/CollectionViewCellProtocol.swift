//
//  CollectionViewCellProtocol.swift
//  photoiostest
//
//  Created by mac on 8/22/17.
//  Copyright © 2017 mac. All rights reserved.
//


import Foundation

protocol CollectionViewCellProtocol : class {
    func loadImage(resourceName:String)
    func setCaption(captionText:String)
    func setShotDetails(shotDetailsText:String)
}
