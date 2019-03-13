//
//  ViewController.swift
//  Smaller World
//
//  Created by Peter Irving on 3/12/19.
//  Copyright © 2019 Peter Irving. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController {

    @IBOutlet weak var button: UIButton! {
        didSet{
            button.clipsToBounds = true
            button.layer.cornerRadius = button.frame.height / 2
        }
    }
    
    @IBOutlet weak var emailTxtFld: UITextField! {
        didSet{
            emailTxtFld.clipsToBounds = true
            emailTxtFld.layer.cornerRadius = emailTxtFld.frame.height / 2
        }
    }
    
    @IBOutlet weak var pswdTxtFld: UITextField!{
        didSet{
            pswdTxtFld.clipsToBounds = true
            pswdTxtFld.layer.cornerRadius = pswdTxtFld.frame.height / 2
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

