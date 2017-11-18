//
//  File.swift
//  King of Space
//
//  Created by james luo on 11/11/17.
//  Copyright © 2017 james luo. All rights reserved.
//

import Foundation
class User{
    var money = 500
    var Ships :Ship
    init(UserName: String) {
        let newShip = Ship(ShipClass: "Star Destoryers", ShipName: UserName)
        Ships = newShip
    }
}
