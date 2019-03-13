//
//  RestaurantVC.swift
//  Smaller World
//
//  Created by Peter Irving on 3/13/19.
//  Copyright © 2019 Peter Irving. All rights reserved.
//

import UIKit

class RestaurantVC: UIViewController {

    @IBOutlet weak var tv: UITableView!
    
    let restaurants = recomendations?.restaurants?.reccs
    
    var lat: Double = 0.0
    var lon: Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        
        lat = 25
        lon = 40
        
        performSegue(withIdentifier: "goToWebKit", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination: WebKitVC = segue.destination as! WebKitVC
        destination.lat = lat
    }
    
}

extension RestaurantVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tv.dequeueReusableCell(withIdentifier: "restaurantCell", for: indexPath) as! RestaurantTVCell
        
        
        let imageString: String?
        
        if indexPath.row % 4 == 0 {
            imageString = "rest1"
        } else if indexPath.row % 3 == 0 {
            imageString = "rest2"
        } else if indexPath.row % 2 == 0 {
            imageString = "rest3"
        } else {
            imageString = "rest4"
        }
        cell.restaurantImageView.image = UIImage(named: imageString!)
        
        cell.restaurantLabel.text = restaurants![indexPath.row]
        
        return cell
    }
    
    
    
}
