 //
//  Character.swift
//  rpgoop
//
//  Created by Lucas Franco on 3/15/16.
//  Copyright © 2016 Lucas Franco. All rights reserved.
//

import Foundation

 class Character {
    private var _hp: Int = 100
    private var _attackpower: Int = 10
 
    var attackPwr: Int{
        get{
            return _attackpower
        }
    }
    var hp: Int{
        get{
            return _hp
        }
    }
    
    var IsAlive: Bool{
        get{
            if hp <= 0 {
        return false
            }else {
        return true
        }
        }
    }
    
    
    init(startingHP: Int, attackPwr: Int){
        self._attackpower = attackPwr
        self._hp = startingHP
    }
    func attemptAtt(AttackPwr: Int) -> Bool{
        self._hp -= AttackPwr
        
        return true
    }
 
 }
 