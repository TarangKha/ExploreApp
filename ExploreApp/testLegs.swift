//
//  testLegs.swift
//  ExploreApp
//
//  Created by Tarang Khandpur on 8/28/17.
//  Copyright © 2017 KoalaFox. All rights reserved.
//

import Foundation

class testLegs: Armor {
    var name: String = "Buster Leggings"
    var defense: Int? = 10;
    
    override func setLegs(input: Int) {self.defense = input }
    override func getLegs() -> Int! {
        return self.defense;
    }
    
    override func ability() {
        print("testLegs Legs Ability");
    }
}
