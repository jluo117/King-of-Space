func claimReward(reward:Player){
  if(winner == "ship1"){
    var moneyGained:Int
    moneyGained = arc4random_uniform(25) + 25
    reward.money += moneyGained
    print("You gain " + moneyGained + " money")
  }
}
