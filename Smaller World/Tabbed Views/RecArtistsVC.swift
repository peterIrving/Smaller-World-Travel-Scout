//
//  RecArtistsVC.swift
//  Smaller World
//
//  Created by Peter Irving on 3/13/19.
//  Copyright © 2019 Peter Irving. All rights reserved.
//

import UIKit

class RecArtistsVC: UIViewController {

    @IBOutlet weak var cv: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

extension RecArtistsVC: UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (recomendations?.artists?.reccs!.count)!
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "RecArtistCell", for: indexPath) as! RecArtistCVCell
        
        let artist = recomendations?.artists?.reccs![indexPath.row]
        
        cell.artistNameLabel.text = artist
        
        return cell
    }
    
    
    
    
}
