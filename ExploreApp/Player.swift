//
//  Player.swift
//  ExploreApp
//
//  Created by Matthew Daumas on 8/20/17.
//  Copyright © 2017 KoalaFox. All rights reserved.
//

import Foundation

class Player {
    var name: String = "Ford Prefect"
    lazy var health: Int? = 15
    lazy var damage: Int? = 15
    
    //TK
    var weapon: Armor?
    var helm: Armor?
    var chest: Armor?
    var legs: Armor?
    //
    
    init(name:String, health:Int, damage:Int, weapon:Armor, helm:Armor, chest:Armor, legs:Armor){
        self.name = name
        self.setHealth(input: health)
        self.setDamage(input: damage)
        
        //TK
        self.equipWeapon(input: weapon, target: self)
        self.equipHelm(input: helm, target: self)
        self.equipChest(input: chest, target: self)
        self.equipLegs(input: legs, target: self)
        //
    }
    
    func setHealth(input: Int) { self.health = input }
    func getHealth() -> Int! { return self.health; }
    
    func setDamage(input: Int) { self.damage = input }
    func getDamage() -> Int! { return self.damage }
    
    func attack(target: Monster){
        let updatedHealth = target.getHealth() - self.getDamage()
        target.setHealth(input: updatedHealth)
        if target.getHealth() <= 0 {
            print("Monster Defeated!")
        }
    }
    
    //TK
    func equipWeapon(input: Armor, target: Player) {
        let updatedDamage = target.getDamage() + input.getWeapon()
        target.setDamage(input: updatedDamage)
        target.weapon = input; //the actual equip
        print("Weapon equipped, ATK power up")
    }
    
    func equipHelm(input: Armor, target: Player){
        let updatedHealth = target.getHealth() + input.getHelm()
        target.setHealth(input: updatedHealth)
        target.helm = input;
        print("Helm equipped, Health UP")
    }
    
    func equipChest(input: Armor, target: Player){
        let updatedHealth = target.getHealth() + input.getChest()
        target.setHealth(input: updatedHealth)
        target.chest = input;
        print("Chest equipped, Health UP")
    }
    
    func equipLegs(input: Armor, target: Player){
        let updatedHealth = target.getHealth() + input.getLegs()
        target.setHealth(input: updatedHealth)
        target.legs = input;
        print("Legs equipped, Health UP")
    }
}
