//
//  menu.swift
//  
//
//  Created by james luo on 11/11/17.
//

import UIKit
var Thegame = game(userName: "bob")
class menu: UIViewController {
    var user = "Darth Vader"
   

    @IBAction func Start(_ sender: Any) {
        var runGame = game(userName: user)
        Thegame = runGame
        performSegue(withIdentifier: "StartGame", sender: self)
    }
    @IBOutlet weak var Welcome: UILabel!
    
    @IBOutlet weak var userInput: UITextField!
    
   
    @IBAction func UserName(NameText: UITextField) {
            user = NameText.text!
            Welcome.text = "Welcome " + user
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "King of Space Title.jpg")!)
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
