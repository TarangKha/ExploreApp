//
//  CombatVC.swift
//  ExploreApp
//
//  Created by Matthew Daumas on 7/18/17.
//  Copyright © 2017 KoalaFox. All rights reserved.
//

import UIKit


class CombatVC: UIViewController {
    
    //Init Battle
    let testMonster = Monster(name: "Zombie Dragon", health: 100, damage: 25);
//    let testPlayer = Player(name: "Jon Snow", health: 100, damage: 50);
    
    //TK
    let testPlayer = Player(name: "TK", health: 100, damage: 10, weapon: testWeapon(), helm: testHelm(), chest: testChest(), legs: testLegs());
    //
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func Attack1(_ sender: UIButton) {
        print("GIR: Before Attack: ")
        print("GIR: ", testMonster.name, " Health: ", testMonster.getHealth());
        print("GIR: ", testPlayer.name, " Health: ", testPlayer.getHealth());
        
        testMonster.attack(target: testPlayer)
        //testPlayer.attack(target: testMonster)
        testPlayer.weapon?.ability(input: testPlayer, target: testMonster);
        
        print("GIR: After Attack: ")
        print("GIR: ", testMonster.name, " Health: ", testMonster.getHealth());
        print("GIR: ", testPlayer.name, " Health: ", testPlayer.getHealth());
    }

    @IBAction func Ability2(_ sender: UIButton) {
        testPlayer.helm?.ability();
    }

    @IBAction func Ability3(_ sender: UIButton) {
        testPlayer.chest?.ability();
    }
    
    @IBAction func Ability4(_ sender: UIButton) {
        testPlayer.legs?.ability();
    }
    
    
}
