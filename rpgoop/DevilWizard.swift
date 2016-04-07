//
//  DevilWizard.swift
//  rpgoop
//
//  Created by Lucas Franco on 3/16/16.
//  Copyright © 2016 Lucas Franco. All rights reserved.
//

import Foundation

class DevilWizard: Enemy{
    override var loot: [String]{
        return ["Magic Wand", "Dark Amulet","Salted Pork"]
    }
    override var type: String{
        return "Devil Wizard"
    }
}