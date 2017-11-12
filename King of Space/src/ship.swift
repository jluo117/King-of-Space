//
//  File.swift
//  King of Space
//
//  Created by james luo on 11/11/17.
//  Copyright © 2017 james luo. All rights reserved.
//

import Foundation
class Ship{
    // bountie hunter
    var maxHp: Int
    var maxShield : Int
    var maxMissle: Int
    var maxEnergy: Int
    var ShipName: String
    var Hp :Int
    var Shield : Int
    var Xp = 0
    var Lvl = 0
    var crew = 1
    var Abilities = [Ability]()
    var MissleCount : Int
    var EnergyCell: Int
    var ShipClass : String
    init(ShipClass: String, ShipName: String) {
        self.ShipName = ShipName
        if ShipClass == "Thanos"{
            self.ShipClass = ShipClass
            self.Hp = 800
            self.Shield = 1000
            self.MissleCount = 100
            self.EnergyCell = 1000
            let multiMissle = Ability(dmg: 100, cost: 10, atkType: "missile")
            let ultraMegaBeam = Ability(dmg: 500, cost:100, atkType: "laser")
            self.Abilities.append(multiMissle)
            self.Abilities.append(ultraMegaBeam)
        }
        else if ShipClass == "Star Destoryers"{
            self.ShipClass = ShipClass
            self.Hp = 600
            self.Shield = 700
            self.MissleCount = 100
            self.EnergyCell = 800
            let Missle = Ability(dmg: 100, cost: 10, atkType: "missile")
            let LaserShot = Ability(dmg:300, cost:100, atkType: "laser")
            self.Abilities.append(Missle)
            self.Abilities.append(LaserShot)
        }
        else if ShipClass == "Elite Fighters"{
            self.ShipClass = ShipClass
            self.Hp = 300
            self.Shield = 400
            self.EnergyCell = 100
            self.MissleCount = 20
            let blasters = Ability (dmg: 20, cost:15, atkType: "laser")
            let seekers = Ability (dmg: 50, cost: 2, atkType: "missile")
            self.Abilities.append(blasters)
            self.Abilities.append(seekers)
        }
        else if ShipClass == "Fighter"{
            self.ShipClass = ShipClass
            self.Hp = 200
            self.Shield = 300
            self.EnergyCell = 50
            self.MissleCount = 10
            let blasters = Ability(dmg: 15, cost:10, atkType: "laser")
            let seekers = Ability(dmg: 20, cost: 2, atkType: "missile")
            self.Abilities.append(blasters)
            self.Abilities.append(seekers)
        }
        else{
            self.ShipClass = "Base"
            self.Hp = 100
            self.Shield = 100
            self.EnergyCell = 10
            self.MissleCount = 5
            let blasters = Ability(dmg:10, cost:10, atkType: "laser")
            let seekers = Ability(dmg: 15 ,cost: 2, atkType: "missile")
            self.Abilities.append(blasters)
            self.Abilities.append(seekers)
        }
        let basic = Ability(dmg: 5, cost:0, atkType: "basic")
        self.Abilities.append(basic)
        self.maxHp = self.Hp
        self.maxShield = self.Shield
        self.maxMissle = self.MissleCount
        self.maxEnergy = self.EnergyCell
    }
    func isValid(aryNum: Int) -> Bool{
        if (self.Abilities[aryNum].atkType == "laser"){
            if (self.Abilities[aryNum].cost > self.EnergyCell){
                return false
            }
            else{
                return true
            }
        }
        else{
            if (self.Abilities[aryNum].cost > self.MissleCount){
                return false
            }
            else{
                return true
            }
        }
    }
    func attack(aryNum: Int,target: Ship) {
        if (self.Abilities[aryNum].atkType == "laser"){
            self.EnergyCell -= self.Abilities[aryNum].cost
            self.Abilities[aryNum].attack(target: target)
        }
        else if (self.Abilities[aryNum].atkType == "missile"){
            self.MissleCount -= self.Abilities[aryNum].cost
            self.Abilities[aryNum].attack(target: target)
        }
        else{
            self.Abilities[2].attack(target: target)
        }
    }
    func recover(){
        self.EnergyCell = self.maxEnergy
        self.MissleCount = self.maxMissle
        self.Hp = self.maxHp
        self.Shield = self.maxShield
    }
}
