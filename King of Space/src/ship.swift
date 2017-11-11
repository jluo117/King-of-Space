//
//  File.swift
//  King of Space
//
//  Created by james luo on 11/11/17.
//  Copyright © 2017 james luo. All rights reserved.
//

import Foundation
class Ship{
    var hp = 0
    var Xp = 0
    func attack(target:Ship, amount:Int) {
        target.hp -= amount
    }
    func heal(amount:Int)  {
        self.hp += amount
    }
}
