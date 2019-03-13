//
//  HotelVC.swift
//  Smaller World
//
//  Created by Peter Irving on 3/13/19.
//  Copyright © 2019 Peter Irving. All rights reserved.
//

import UIKit

class HotelVC: UIViewController {

    @IBOutlet weak var tv: UITableView!
    
    var lat: Double = 0
    var lon: Double = 0
    
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

extension HotelVC: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tv.dequeueReusableCell(withIdentifier: "hotelCell", for: indexPath) as! HotelTVCell
        
        var imageString: String?
        if indexPath.row % 3 == 0 {
            imageString = "hotel1"
        } else if indexPath.row % 2 == 0 {
            imageString = "hotel2"
        } else {
            imageString = "hotel3"
        }
        cell.hotelImageView!.image = UIImage(named: imageString!)
        
        let hotels = recomendations?.hotels?.reccs
        
        cell.hotelNameLabel.text = hotels![indexPath.row]
        
        return cell
    }
}
