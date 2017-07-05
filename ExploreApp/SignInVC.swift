//
//  ViewController.swift
//  MapGame
//
//  Created by Matthew Daumas on 6/16/17.
//  Copyright © 2017 Matthew Daumas. All rights reserved.
//

import UIKit
import Firebase
import FBSDKCoreKit
import FBSDKLoginKit

class SignInVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func facebookBtnTapped(_ sender: AnyObject) {
    let facebookLogin = FBSDKLoginManager()
        facebookLogin.logIn(withReadPermissions: ["email"], from: self) { (result, error) in
            if error != nil {
                print("Matt: Unable to authenticate with Facebook -\(error)")
            } else if result?.isCancelled == true {
                print("Matt: User cancelled Facebook authentication")
            } else {
                print("Matt: SUccessfully authenticated with Facebook")
                let credential = FacebookAuthProvider.credential(withAccessToken: FBSDKAccessToken.current().tokenString)
                self.firebaseAuth(credential)
            }
        }
    }
    
    func firebaseAuth(_ credential: AuthCredential) {
        Auth.auth().signIn(with: credential, completion: { (user,error) in
            if error != nil {
                print("Matt: Unable to authenticate with Firebase - \(error)")
            } else {
                print("Matt: Successfully authenticated with Firebase")
            }
        })
    }
}

