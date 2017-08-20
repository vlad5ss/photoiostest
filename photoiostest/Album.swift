//
//  Album.swift
//  photoiostest
//
//  Created by mac on 8/21/17.
//  Copyright © 2017 mac. All rights reserved.
//

import Foundation

class Album: NSObject {
    
    var cities:[City]?
    
    override init() {
        super.init()
        
        if cities == nil {
            cities = [City]()
        }
    }
    
    func load(filePath:String?) -> Void {
        
        guard let filePath = filePath,
            let array = NSArray(contentsOfFile: filePath) as? [AnyObject] else {
                return
        }
        
        for item in array {
            guard let dictionary = item as? [String : AnyObject] else {
                continue
            }
            
            if let city = City(dictionary) {
                cities?.append(city)
            }
        }
        
    }
}

