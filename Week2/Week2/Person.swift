//
//  Person.swift
//  Week2
//
//  Created by Duy Nguyen on 11/3/19.
//  Copyright © 2019 Duc Nguyen. All rights reserved.
//

import UIKit

class Person: NSObject {
    var name: String
    var house: String
    var age: Int
    
    init(name: String, house: String, age: Int) {
        self.name = name
        self.house = house
        self.age = age
    }
}
