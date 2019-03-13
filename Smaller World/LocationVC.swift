//
//  LocationVC.swift
//  Smaller World
//
//  Created by Peter Irving on 3/12/19.
//  Copyright © 2019 Peter Irving. All rights reserved.
//

import UIKit

var recomendations: Reccomendations?

func roundCorners(view:UIView) {
    view.clipsToBounds = true
    view.layer.cornerRadius = view.frame.height / 2
}

class LocationVC: UIViewController {

    @IBOutlet weak var textField: UITextField! {
        didSet{
            roundCorners(view: textField)
        }
    }
    @IBOutlet weak var newYorkBtn: UIButton! {
        didSet{
            roundCorners(view: newYorkBtn)
        }
    }
    @IBOutlet weak var austinBtn: UIButton! {
        didSet{
            roundCorners(view: austinBtn)
        }
    }
    @IBOutlet weak var chicagoBtn: UIButton! {
        didSet{
            roundCorners(view: chicagoBtn)
        }
    }
    @IBOutlet weak var funkyTownBtn: UIButton! {
        didSet{
            roundCorners(view: funkyTownBtn)
        }
    }
    @IBOutlet weak var funksGroveBtn: UIButton! {
        didSet{
            roundCorners(view: funksGroveBtn)
        }
    }
    
    
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
        
        let json = sampleRequestData.data(using: .utf8)!
        
        do {
            recomendations = try JSONDecoder().decode(Reccomendations.self, from: json)
        } catch {
            print("error decoding json")
        }
        
        if let recStruct = recomendations {
            print(recStruct.artists)
        }

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
