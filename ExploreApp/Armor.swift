//
//  Armor.swift
//  ExploreApp
//
//  Created by Tarang Khandpur on 8/24/17.
//  Copyright © 2017 KoalaFox. All rights reserved.
//

import Foundation

class Armor{
    var helmDEF: Int? = 10
    var chestDEF: Int? = 10
    var legsDEF: Int? = 10
    var weaponATK: Int? = 10
    
    func setHelm(input: Int) {self.helmDEF = input }
    func getHelm() -> Int! {
        return self.helmDEF;
    }
    
    func setChest(input: Int) {self.chestDEF = input }
    func getChest() -> Int! {
        return self.chestDEF;
    }
    
    func setLegs(input: Int) {self.legsDEF = input }
    func getLegs() -> Int! {
        return self.legsDEF;
    }
    
    func setWeapon(input: Int) {self.weaponATK = input }
    func getWeapon() -> Int! {
        return self.weaponATK;
    }
    
    func ability(){
        print("Armor Ability");
    }
    
    func ability(target: Monster){
        print("Ability that attacks");
    }
    
    func ability(input: Player, target: Monster){
        print("Ability that uses a Player parameter and interacts with the Monster")
    }
    
}


