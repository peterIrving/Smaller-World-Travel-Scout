//
//  LocationVC.swift
//  Smaller World
//
//  Created by Peter Irving on 3/12/19.
//  Copyright © 2019 Peter Irving. All rights reserved.
//

import UIKit

class LocationVC: UIViewController {

    var coords: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
//        if let barVC = segue.destination as? UITabBarController {
//            barVC.viewControllers?.forEach {
//                if let vc = $0 as? YourViewController {
//                    vc.firstName = self.firstName
//                    vc.lastName = self.lastName
//                }
//            }
//        }
    }
    
    @IBAction func newYorkClick(_ sender: Any) {
        
        coords = "40.758896, -73.985130/5"
        performSegue(withIdentifier: "goToReccomendations", sender: self)
    }
    
    @IBAction func austinClick(_ sender: Any) {
        
        coords = "30.267153/-97.7430608/5"
        performSegue(withIdentifier: "goToReccomendations", sender: self)
    }
    
    @IBAction func chicagoClick(_ sender: Any) {
        
        coords = "41.881832/ -87.623177/5"
        performSegue(withIdentifier: "goToReccomendations", sender: self)
    }
    

}
