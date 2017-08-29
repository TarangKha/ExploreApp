//
//  testHelm.swift
//  ExploreApp
//
//  Created by Tarang Khandpur on 8/28/17.
//  Copyright © 2017 KoalaFox. All rights reserved.
//

import Foundation

class testHelm : Armor {
    var name: String = "Buster Helm"
    var defense: Int? = 10;
    //var sprite:
    
    override func setHelm(input: Int) {self.defense = input }
    override func getHelm() -> Int! {
        return self.defense;
    }
    
    override func ability() {
        print("testHelm Helmet Ability");
    }
}
