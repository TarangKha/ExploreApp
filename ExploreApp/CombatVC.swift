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
    let testPlayer = Player(name: "Jon Snow", health: 100, damage: 50);
    
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
        testPlayer.attack(target: testMonster)
        
        print("GIR: After Attack: ")
        print("GIR: ", testMonster.name, " Health: ", testMonster.getHealth());
        print("GIR: ", testPlayer.name, " Health: ", testPlayer.getHealth());
    }


}
