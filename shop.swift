//
//  File.swift
//  King of Space
//
//  Created by james luo on 11/11/17.
//  Copyright © 2017 james luo. All rights reserved.
//

import Foundation
class Shop{

  var isInShop

  while (isInShop == true){
    func buyMissile(self:Player, yourShip:Ship){
      if(self.money >= 10) {
        self.money -= 10
        yourShip.MissileCount = maxMissle
      }
    }
    func buyEnergyCell(self:Player, yourShip:Ship){
      if(self.money >= 10) {
        self.money -= 10
        yourShip.EnergyCell = maxEnergy
      }
    }
    func leaveShop(){
      isInShop = false
      //break
    }

    print("What would you like to purchase?")
    //playerAction
  }



}
