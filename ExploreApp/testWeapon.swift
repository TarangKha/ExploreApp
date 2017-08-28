//
//  testWeapon.swift
//  ExploreApp
//
//  Created by Tarang Khandpur on 8/28/17.
//  Copyright © 2017 KoalaFox. All rights reserved.
//

import Foundation

class testWeapon : Armor{
    var name: String = "Buster Sword"
    var attack: Int? = 10;
    
    override func setWeapon(input: Int) {self.attack = input }
    override func getWeapon() -> Int! {
        return self.attack;
    }
    
    override func ability(input: Player, target: Monster) {
        let updatedHealth = target.getHealth() - input.getDamage()
        target.setHealth(input: updatedHealth)
        if target.getHealth() <= 0 {
            print("Monster Defeated!")
        }
        print("testWeapon Weapon Ability");
    }
    
}
