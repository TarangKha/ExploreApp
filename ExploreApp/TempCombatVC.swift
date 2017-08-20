//
//  TempCombatVC.swift
//  ExploreApp
//
//  Created by Tarang Khandpur on 7/19/17.
//  Copyright © 2017 KoalaFox. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FBSDKCoreKit
import FBSDKLoginKit

class TempCombatVC: UIViewController {
    
    
    @IBAction func Seg_Combat_to_Map(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

