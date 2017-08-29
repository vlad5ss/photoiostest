//
//  UIImageViewStub.swift
//  photoiostest
//
//  Created by mac on 8/29/17.
//  Copyright © 2017 mac. All rights reserved.
//

import UIKit

class UIImageViewStub: UIImageView {
    
    init() {
        super.init(frame: CGRect.zero)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
