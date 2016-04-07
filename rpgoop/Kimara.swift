//
//  Kimara.swift
//  rpgoop
//
//  Created by Lucas Franco on 3/16/16.
//  Copyright © 2016 Lucas Franco. All rights reserved.
//

import Foundation

class Kimara: Enemy{
    let immune_max = 15
    
    override var loot: [String]{
        return ["Tough Hide","Kimara Venom", "Rare Trident"]
    }
    
    override var type: String {
    return "Kimara"
    }
    
    override func attemptAtt(AttackPwr: Int) -> Bool {
        if AttackPwr >= immune_max {
            return super.attemptAtt(AttackPwr)
        } else {
            return false
                }
    }
}

