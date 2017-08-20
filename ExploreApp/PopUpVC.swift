//
//  PopUpVC.swift
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

class PopUpVC: UIViewController {
    
    @IBOutlet weak var popUpView: UIView!
    
    @IBAction func Seg_PopUp_to_Map(_ sender: Any) {
    dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        popUpView.layer.cornerRadius = 10
        popUpView.layer.masksToBounds = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
