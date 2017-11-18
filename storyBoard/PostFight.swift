//
//  PostFight.swift
//  King of Space
//
//  Created by james luo on 11/11/17.
//  Copyright © 2017 james luo. All rights reserved.
//

import UIKit

class PostFight: UIViewController {

    @IBOutlet weak var Money: UILabel!
    @IBOutlet weak var Stat: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        Thegame.player.Ships.Shield = Thegame.player.Ships.maxShield
        if Battle.PlayerShip.Hp > 0 && Battle.CpuShip.Hp <= 0{
            Stat.text = "You Win the Battle"
            Thegame.player.money += 150
        }
        else{
            Stat.text = "Your Ship is gone"
        }
         Money.text = "You have " + String(Thegame.player.money)
        // Do any additional setup after loading the view.
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
