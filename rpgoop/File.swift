//
//  File.swift
//  rpgoop
//
//  Created by Lucas Franco on 3/15/16.
//  Copyright © 2016 Lucas Franco. All rights reserved.
//

import Foundation


class Player: Character{
    private var _name: String = "Playa"
    
    
    var name: String {
        get{
            return _name
        }
    }
    
     var _inventory = [String]()
    
    var inventory:[String]{
        get{
            return _inventory
        }
        }
    func addItemInventory(item: String){
        _inventory.append(item)
    }
    convenience init(name: String, hp: Int, AttackPwr: Int){
        self.init(startingHP: hp, attackPwr: AttackPwr)
        _name = name
    }
}