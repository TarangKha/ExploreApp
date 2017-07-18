//
//  InventoryVC.swift
//  ExploreApp
//
//  Created by Tarang Khandpur on 7/18/17.
//  Copyright © 2017 KoalaFox. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FBSDKCoreKit
import FBSDKLoginKit

class InventoryVC: UIViewController {
    
    @IBAction func Seg_Inven_to_Map(_ sender: Any) {
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
