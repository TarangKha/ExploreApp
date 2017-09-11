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
    
    var monsterAttackTimer = Timer()
    var playerCooldownTimer = Timer()


    
    override func viewDidLoad() {
        super.viewDidLoad()
        monsterAttackTimer = Timer.scheduledTimer(timeInterval: 10.0, target:self, selector: #selector(self.monsterAttack), userInfo: target, repeats: true)
 

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func monsterAttack(){
        print("yo");
        testMonster.attack(target: testPlayer);
    }
    
    func unhide(){
        Attack1Btn.isHidden = false;
        //replace the loading animation back with the button
    }
    
    @IBOutlet weak var Attack1Btn: UIButton!
    @IBAction func Attack1(_ sender: UIButton) {
        // Hide/Replace Button with loading animation
        Attack1Btn.isHidden = true
        // Start x-amount of time Timer (example. 5 seconds)
        playerCooldownTimer = Timer.scheduledTimer(timeInterval: 3.0, target:self, selector: #selector(self.unhide), userInfo: target, repeats: true)
        
        
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
