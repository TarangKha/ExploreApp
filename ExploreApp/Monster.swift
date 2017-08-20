//
//  Monster.swift
//  ExploreApp
//
//  Created by Matthew Daumas on 8/20/17.
//  Copyright © 2017 KoalaFox. All rights reserved.
//

import Foundation

class Monster {
    
    var name = "Vogon"
    var health: Int? = 42
    var damage: Int? = 42
    
    init(name:String, health:Int, damage:Int){
        self.name = name
        self.setHealth(input: health)
        self.setDamage(input: damage)
    }
    
    func setHealth(input: Int) { self.health = input; }
    func getHealth() -> Int! { return self.health; }
    
    func setDamage(input: Int){ self.damage = input; }
    func getDamage() -> Int! { return self.damage; }
    
    func attack(target: Player){
        let updatedHealth = target.getHealth() - self.getDamage()
        target.setHealth(input: updatedHealth)
        if target.getHealth() <= 0 {
            print("Player Defeated!")
        }
    }
    
    
}
