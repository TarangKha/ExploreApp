//
//  testChest.swift
//  ExploreApp
//
//  Created by Tarang Khandpur on 8/28/17.
//  Copyright © 2017 KoalaFox. All rights reserved.
//

import Foundation

class testChest: Armor {
    var name: String = "Buster Chest"
    var defense: Int? = 10;
    /*
    other possibile parameters:
    
    var durability
    var sprite: image
    etc..
    */
    
    override func setChest(input: Int) {self.defense = input }
    override func getChest() -> Int! {
        return self.defense;
    }
    
    override func ability() {
        print("testChest Chest Ability");
    }
}
