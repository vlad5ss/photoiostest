//
//  UILabelStub.swift
//  photoiostest
//
//  Created by mac on 8/30/17.
//  Copyright © 2017 mac. All rights reserved.
//

import UIKit

class UILabelStub: UILabel {
    
    init() {
        super.init(frame: CGRect.zero)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
