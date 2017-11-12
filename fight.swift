//
//fight.swift
//for King of Space
// created 11/11/2017
//

import Foundation
class fight(ship1, ship2){
  var reward;
  var winner:String

  func isAlive() -> bool{
    if this.health > 0 {
    return true;
    }else{ return false;}
  }

  func claimReward(reward:Player){
    if(winner == "ship1"){
      var moneyGained:Int
      moneyGained = arc4random_uniform(25) + 25
      reward.money += moneyGained
      print("You gain " + moneyGained + " money")
    }
  }
}
  func fight(ship1, ship2) -> ship{
    while(ship1.isAlive() && ship2.isAlive()){
      ship1.attack()
      usleep(3000000)
      if(!ship2.isAlive()){
        winner = "ship1"
        claimReward()
        //break;
      }

      ship2.cpuAttack()
      usleep(3000000)
      if(!ship1.isAlive()){
        winner = "ship2"
        //break;
      }

    }
  }



}// end of class
