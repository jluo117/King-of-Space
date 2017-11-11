//
//fight.swift
//for King of Space
// created 11/11/2017
//
class fight(ship1, ship2){
  var reward;

  //func isWinner() -> bool{}

  func isAlive() -> bool{
    if this.health > 0 {
    return true;
    }else{ return false;}
  }


  //func claimReward(){}


  }
  func fight(ship1, ship2) -> ship{
    while(ship1.isAlive() && ship2.isAlive()){
      ship1.attack()
      usleep(3000000)
      if(!ship2.isAlive()){
        //break;
      }

      ship2.cpuAttack()
      usleep(3000000)
      if(!ship2.isAlive()){
      //break;
      }

    }
  }



}// end of class
