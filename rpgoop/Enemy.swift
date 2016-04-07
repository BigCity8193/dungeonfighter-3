//
//  Enemy.swift
//  rpgoop
//
//  Created by Lucas Franco on 3/16/16.
//  Copyright © 2016 Lucas Franco. All rights reserved.
//

import Foundation


class Enemy: Character {
    
    var loot: [String]{
        return ["Rusty Dagger","Cracked Buckler"]
    }
    
    var type: String{
        return "Grunt"
    }
    
    func dropLoot()->String?{
        if !IsAlive{
            let rand = Int(arc4random_uniform(UInt32(loot.count)))
            return loot[rand]
        }
        return nil
    }
    
}