//
//  abilities.swift
//  King of Space
//
//  Created by james luo on 11/11/17.
//  Copyright © 2017 james luo. All rights reserved.
//

import Foundation
class Abilities{
    var missileCount = 0
    string type

    func damageTaken(damage:Int, shieldMultiplier:Double, hpMultiplier:Double){
        if (shield > 0){
            target.shield -= (damage * shieldMultiplier)
        }
        else {
            target.hp -= (damage * hpMultiplier)
        }
    }
    func attack(target:Ship) {
        type = "regular"
        target.damageTaken(1, 1, 1)
    }
    func fireMissile(target:Ship) {
        type = "missile"
        target.damageTaken(15, 0.5, 1.5)
        MissleCount -= 1
    }
    func fireLaser(target:Ship) {
        type = "laser"
        target.damageTanken(15, 1.5, 0.5)
        energyCell -= 1
    }
}
