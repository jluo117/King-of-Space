//
//fight.swift
//for King of Space
// created 11/11/2017
//
import Foundation
class fight{
   // var reward : Int
    var PlayerShip: Ship
    var CpuShip:Ship
    init (ship1: Ship, ship2:Ship){
        PlayerShip = ship1
        CpuShip = ship2
  }
    func attack(Turn: String,Called: Int) -> Bool {
        if (Turn == "Player"){
            PlayerShip.attack(aryNum: Called, target: CpuShip)
            if CpuShip.Hp <= 0{
                return true
            }
            return false
        }
        else{
            while (true){
                var attackArray  = Int(arc4random_uniform(UInt32((CpuShip.Abilities.count))))
                
                if CpuShip.isValid(aryNum: attackArray){
                    CpuShip.attack(aryNum: attackArray, target: PlayerShip)
                    break
                }
                else{
                    continue
                }
        }
            if (PlayerShip.Hp <= 0){
                return true
            }
            return false
    }
  }

}

