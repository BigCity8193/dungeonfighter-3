//
//  ViewController.swift
//  rpgoop
//
//  Created by Lucas Franco on 3/15/16.
//  Copyright © 2016 Lucas Franco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var printLabel: UILabel!
    @IBOutlet weak var PlayerHP: UILabel!
    @IBOutlet weak var EnemyHP: UILabel!
    @IBOutlet weak var EnemyImage: UIImageView!
    @IBOutlet weak var ChestBtn: UIButton!
   
    
    var player: Player!
    var enemy: Enemy!
    var chestmessage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player(name: "Zeca",hp:  100 , AttackPwr:  20)
        PlayerHP.text = "\(player.hp) HP"
        generateRandomEnemy()  
    }
    
    @IBAction func AttackBtn(sender: AnyObject) {
        if enemy.attemptAtt(player.attackPwr){
            printLabel.text = "Attacked! \(enemy.type) for \(player.attackPwr) HP"
        } else {
            printLabel.text = "Attack Unsuccessful"
        }
        EnemyHP.text = "\(enemy.hp) HP"
        if let loot = enemy.dropLoot(){
            player.addItemInventory(loot)
            chestmessage = "\(player.name) found \(loot)"
            ChestBtn.hidden = false
        }
        
        if !enemy.IsAlive {
            EnemyHP.text = ""
            printLabel.text = "\(player.name) kille \(enemy.type)"
            EnemyImage.hidden = true
        }
    
    }
    
    
    
    func generateRandomEnemy(){
        let rand = Int(arc4random_uniform(2))
        
        if rand == 0 {
            enemy = Kimara(startingHP: 50, attackPwr:  15)
        } else{
            enemy = DevilWizard(startingHP: 60, attackPwr:  20)
        }
        
        EnemyImage.hidden = false
    }
        @IBAction func OnBtnTapped(sender: AnyObject) {
            ChestBtn.hidden = true
            printLabel.text = chestmessage
            NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: "generateRandomEnemy", userInfo: nil, repeats: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

