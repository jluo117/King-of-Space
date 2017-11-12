//
//  fightController.swift
//  King of Space
//
//  Created by james luo on 11/11/17.
//  Copyright © 2017 james luo. All rights reserved.
//

import UIKit
var Player = Ship(ShipClass:"Star Destoryers" , ShipName: "Darth Vader")
var Computer = Ship(ShipClass: "Base", ShipName: "Han Solo")
var Battle = fight(ship1: Player, ship2: Computer)
class fightController: UIViewController {

    @IBOutlet weak var PlayerName: UILabel!
    @IBOutlet weak var CpuName: UILabel!
    @IBOutlet weak var LaserCost: UILabel!
    @IBOutlet weak var ErrorMsg: UILabel!
    @IBOutlet weak var MissleCost: UILabel!
    @IBOutlet weak var MissleAttack: UIButton!
    @IBOutlet weak var BasicAttack: UIButton!
    @IBOutlet weak var LaserAttack: UIButton!
    @IBOutlet weak var CpuShield: UILabel!
    @IBOutlet weak var CpuHp: UILabel!
    @IBOutlet weak var LaserCount: UILabel!
    @IBOutlet weak var MissleCount: UILabel!
    @IBOutlet weak var UserShield: UILabel!
    @IBOutlet weak var UserHp: UILabel!
    @IBOutlet weak var PlayerShip: UIImageView!
    @IBOutlet weak var CpuShip: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        if (Player.ShipClass == "Star Destoryers"){
            PlayerShip.image = #imageLiteral(resourceName: "starDestoryer.jpg")
        }
        else if (Player.ShipClass == "Elite Fighters"){
            PlayerShip.image = #imageLiteral(resourceName: "bigsip.jpg")
        }
        else{
            PlayerShip.image = #imageLiteral(resourceName: "standard.jpeg")
        }
        
        if (Computer.ShipClass == "Star Destoryers"){
            CpuShip.image = #imageLiteral(resourceName: "starDestoryer.jpg")
        }
        else if (Computer.ShipClass == "Elite Fighters"){
            CpuShip.image = #imageLiteral(resourceName: "bigsip.jpg")
        }
        else{
            CpuShip.image = #imageLiteral(resourceName: "standard.jpeg")
        }
        PlayerName.text = Player.ShipName
        CpuName.text = Computer.ShipName
        UserHp.text = String(Battle.PlayerShip.Hp)
        UserShield.text = String(Battle.PlayerShip.Shield)
        MissleCount.text = String(Battle.PlayerShip.MissleCount)
        LaserCount.text = String(Battle.PlayerShip.EnergyCell)
        CpuHp.text = String(Battle.CpuShip.Hp)
        CpuShield.text = String(Battle.CpuShip.Shield)
        // Do any additional setup after loading the view.
        MissleCost.text = String(Player.Abilities[0].cost)
        LaserCost.text = String(Player.Abilities[1].cost)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func MissleAttack(_ sender: Any) {
        ErrorMsg.text = ""
        if Battle.PlayerShip.isValid(aryNum: 0){
            if (Battle.attack(Turn: "Player", Called: 0)){
                performSegue(withIdentifier: "PostFight", sender: self)
            }
            if (Battle.attack(Turn: "Cpu", Called: 0)){
                performSegue(withIdentifier: "PostFight", sender: self)
            }
            PlayerName.text = Player.ShipName
            CpuName.text = Computer.ShipName
            UserHp.text = String(Battle.PlayerShip.Hp)
            UserShield.text = String(Battle.PlayerShip.Shield)
            MissleCount.text = String(Battle.PlayerShip.MissleCount)
            LaserCount.text = String(Battle.PlayerShip.EnergyCell)
            CpuHp.text = String(Battle.CpuShip.Hp)
            CpuShield.text = String(Battle.CpuShip.Shield)
            return
        }
        ErrorMsg.text = "Not enough resources"
    }
    
    @IBAction func LaserAttack(_ sender: Any) {
        ErrorMsg.text = ""
        if Battle.PlayerShip.isValid(aryNum: 1){
            if (Battle.attack(Turn: "Player", Called: 1)){
                performSegue(withIdentifier: "PostFight", sender: self)
            }
            if (Battle.attack(Turn: "Cpu", Called: 0)){
                performSegue(withIdentifier: "PostFight", sender: self)
            }
            PlayerName.text = Player.ShipName
            CpuName.text = Computer.ShipName
            UserHp.text = String(Battle.PlayerShip.Hp)
            UserShield.text = String(Battle.PlayerShip.Shield)
            MissleCount.text = String(Battle.PlayerShip.MissleCount)
            LaserCount.text = String(Battle.PlayerShip.EnergyCell)
            CpuHp.text = String(Battle.CpuShip.Hp)
            CpuShield.text = String(Battle.CpuShip.Shield)
            return
        }
        
        ErrorMsg.text = "Not enough resources"
    }
  
    
    
    @IBAction func BasicAttack(_ sender: Any) {
        ErrorMsg.text = ""
        if Battle.PlayerShip.isValid(aryNum: 2){
            if (Battle.attack(Turn: "Player", Called: 2)){
                performSegue(withIdentifier: "PostFight", sender: self)
            }
            if (Battle.attack(Turn: "Cpu", Called: 0)){
                performSegue(withIdentifier: "PostFight", sender: self)
            }
            PlayerName.text = Player.ShipName
            CpuName.text = Computer.ShipName
            UserHp.text = String(Battle.PlayerShip.Hp)
            UserShield.text = String(Battle.PlayerShip.Shield)
            MissleCount.text = String(Battle.PlayerShip.MissleCount)
            LaserCount.text = String(Battle.PlayerShip.EnergyCell)
            CpuHp.text = String(Battle.CpuShip.Hp)
            CpuShield.text = String(Battle.CpuShip.Shield)
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
