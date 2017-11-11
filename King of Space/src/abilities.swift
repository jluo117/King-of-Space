//
//  abilities.swift
//  King of Space
//
//  Created by james luo on 11/11/17.
//  Copyright © 2017 james luo. All rights reserved.
//

import Foundation
class Ability{
    var dmg: Int
    var cost : Int
    var atkType : String
    init(dmg: Int,cost: Int, atkType: String) {
        self.dmg = dmg
        self.cost = cost
        self.atkType = atkType
    }
    
    func attack(target:Ship) {
        if self.atkType == "missile"{
            fireMissile(target: target)
        }
        else if self.atkType == "laser"{
            fireLaser(target: target)
        }
        else{
            if (target.Shield > 0){
                target.Shield -= (self.dmg)
            }
            else {
                target.Hp -= (self.dmg)
            }
        }
    }
    func fireMissile(target:Ship) {
        if (target.Shield > 0){
            target.Shield -= self.dmg - (self.dmg/4)
        }
        else {
            target.Hp -= (self.dmg + self.dmg/2)
        }
    }
    func fireLaser(target:Ship) {
        if (target.Shield > 0){
            target.Shield -= self.dmg + (self.dmg/3)
        }
        else {
            target.Hp -= (self.dmg - self.dmg/2)
        }
    }
}
