//
//  ViewController.swift
//  TwitterDemo
//
//  Created by Darshit Vadodaria on 02/11/18.
//  Copyright © 2018 Darshit Vadodaria. All rights reserved.
//

import UIKit


public struct TwitterKeys {
    static let KConsumerKey = "uPCEqnJ83WCvYRtKR2FpZ09qW"
    static let KConsumerSecret = "3iVJ666ycr6SqjYDacHfSGOK0bVqahJjhjjiysxychNW48VASm"
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onClickLoginButton(_ sender: Any) {
        TwitterLoginHelper.sharedInstance.doLoginWithTwitter { (isSuccess, error) in
            if isSuccess {
               // Fetch LoggedIn User's Details
            } else {
                print(error?.localizedDescription ?? "")
                TwitterLoginHelper.sharedInstance.logoutFromTwitter()
            }
        }
    }
    
    func getUserDetails() {
        TwitterLoginHelper.sharedInstance.getLoggedInUserDetailswith(completion: { (userData, error) in
            if userData != nil {
                print("UserData: \(userData?.userID ?? 0)")
            } else {
                print(error?.localizedDescription ?? "")
            }
        })
    }
    
}

