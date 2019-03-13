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

protocol LocationVCDelegate {
    func didFinishAPI()
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
    let networking = NetworkingClient()
    var delegate: LocationVCDelegate?
    let loadingScreen = LoadingScreen()
    var artistArray : TopArtists?
    var artistString = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let artistNames = artistArray?.items {
            for i in 0...artistNames.count-1 {
                print(i)
                print(artistArray?.items?[i].name!)
                if let name = artistArray?.items?[i].name! {
                    if i == 9 {
                        artistString += name
                    } else {
                        artistString += (name + "+")
                    }
                }
            }
        }
    }
    
    
    
    func loadData() {
        let urlString = "https://sxswhack2019-travelscout.herokuapp.com/qloo/\(artistString)/\(coords!)"
        let escapedAddress = urlString.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)
        
        guard let url = URL(string: escapedAddress!) else { return }
        
        print(url)
        
        loadingScreen.startLoadingIcon(view: self.view, opasitatedBackground: true, isLargeIcon: true)
        
        networking.grabReccomendations(url) { (results, error) in
            if let error = error {
                print (error)
                self.loadingScreen.stopLoadingScreen()
                return
            }
            recomendations = results
            self.delegate?.didFinishAPI()
            self.loadingScreen.stopLoadingScreen()
            DispatchQueue.main.async {
                self.performSegue(withIdentifier: "goToReccomendations", sender: self)
            }
            
        }
    }
    
    @IBAction func newYorkClick(_ sender: Any) {
        
        coords = "40.75/-73.98/5"
        loadData()
    }
    
    @IBAction func austinClick(_ sender: Any) {
        
        coords = "30.26/-97.74/5"
        loadData()
    }
    
    @IBAction func chicagoClick(_ sender: Any) {
        
        coords = "45.52/-122.67/5"
        loadData()
       
    }
    
    @IBAction func continueClick(_ sender: Any) {
        performSegue(withIdentifier: "goToReccomendations", sender: self)
    }
    
}
