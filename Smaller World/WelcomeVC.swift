//
//  ViewController.swift
//  Smaller World
//
//  Created by Peter Irving on 3/12/19.
//  Copyright © 2019 Peter Irving. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController {

    @IBOutlet weak var loginContainerView: UIView! {
        didSet{
            loginContainerView.clipsToBounds = true
            loginContainerView.layer.cornerRadius = 15
        }
    }
    
    @IBOutlet weak var emailContainer: UIView!{
        didSet{
            emailContainer.clipsToBounds = true
            emailContainer.layer.cornerRadius = 15
        }
    }
    @IBOutlet weak var emailTxtFld: UITextField!
    
    @IBOutlet weak var passwordContainer: UIView!{
        didSet{
            passwordContainer.clipsToBounds = true
            passwordContainer.layer.cornerRadius = 15
        }
    }
    @IBOutlet weak var passwordTxtFld: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func signInClick(_ sender: Any) {
   
        performSegue(withIdentifier: "loginSegue", sender: self)
    
    }
    
}

