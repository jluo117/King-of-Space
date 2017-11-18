//
//  Game.swift
//  
//
//  Created by james luo on 11/11/17.
//

import Foundation
class game{
    var player : User
    init(userName: String) {
        player = User(UserName: userName)
    }
    func recover(yourShip: Ship){
        while (yourShip.Hp < yourShip.maxHp && self.player.money >= 1){
            repairShip(yourShip: yourShip)
        }
        while (yourShip.EnergyCell < yourShip.maxEnergy && self.player.money >= 1) {
            buyEnergyCell(yourShip: yourShip)
        }
        while (yourShip.MissleCount < yourShip.maxMissle && self.player.money >= 10){
            buyMissile(yourShip: yourShip)
        }
    }
    func buyMissile(yourShip:Ship){
              if(self.player.money >= 10) {
                if yourShip.MissleCount >= yourShip.maxMissle{
                    return
                }
                self.player.money -= 10
                yourShip.MissleCount += 1
              }
            }
    func buyEnergyCell(yourShip:Ship){
        if(self.player.money >= 1) {
            if yourShip.EnergyCell >= yourShip.maxEnergy{
                return
            }
            self.player.money -= 1
            yourShip.EnergyCell += 10
            }
        }
    func repairShip(yourShip:Ship){
        if(self.player.money >= 1) {
            if yourShip.Hp >= yourShip.maxHp{
                return
            }
            self.player.money -= 1
            yourShip.Hp += 15
        }
    }
}
