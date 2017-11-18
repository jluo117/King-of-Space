//
//  Shop.swift
//  
//
//  Created by james luo on 11/11/17.
//

import UIKit

class Shop: UIViewController {

    @IBOutlet weak var Money: UILabel!
    @IBOutlet weak var Energy: UILabel!
    @IBOutlet weak var HP: UILabel!
    @IBOutlet weak var Missle: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        Money.text = String(Thegame.player.money)
        Missle.text = String(Thegame.player.Ships.MissleCount)
        Energy.text = String(Thegame.player.Ships.EnergyCell)
        HP.text = String(Thegame.player.Ships.Hp)
        // Do any additional setup after loading the view.
    }
    func reloadUI(){
        Money.text = String(Thegame.player.money)
        Missle.text = String(Thegame.player.Ships.MissleCount)
        Energy.text = String(Thegame.player.Ships.EnergyCell)
        HP.text = String(Thegame.player.Ships.Hp)
    }
    @IBAction func Recover(_ sender: Any) {
        Thegame.recover(yourShip: Thegame.player.Ships)
        reloadUI()
    }
    
    @IBAction func Repair(_ sender: Any) {
        Thegame.repairShip(yourShip: Thegame.player.Ships)
        reloadUI()
    }
    
   
    @IBAction func Laser(_ sender: Any) {
        Thegame.buyEnergyCell(yourShip: Thegame.player.Ships)
        reloadUI()
    }
    
    
    @IBAction func Missle(_ sender: Any) {
        Thegame.buyMissile(yourShip: Thegame.player.Ships)
        reloadUI()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
