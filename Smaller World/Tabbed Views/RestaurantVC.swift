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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}

extension RestaurantVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 12
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tv.dequeueReusableCell(withIdentifier: "restaurantCell", for: indexPath)
        
        return cell
    }
    
    
    
}
