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

extension RecArtistsVC: LocationVCDelegate {
    func didFinishAPI() {
        cv.reloadData()
    }
}

extension RecArtistsVC: UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "RecArtistCell", for: indexPath) as! RecArtistCVCell
        
        var imageString: String?
        
        if indexPath.row % 7 == 0 {
            imageString = "bruno"
        } else if indexPath.row % 6 == 0 {
            imageString = "scary"
        } else if indexPath.row % 5 == 0 {
            imageString = "elton"
        } else if indexPath.row % 4 == 0 {
            imageString = "guitarist"
        } else if indexPath.row % 3 == 0 {
            imageString = "sax"
        } else if indexPath.row % 2 == 0 {
            imageString = "elvis"
        } else {
            imageString = "strings"
        }
        
        cell.artistImageView.image = UIImage(named: imageString!)
        
        let artist = recomendations?.artists!.reccs![indexPath.row]
        
        cell.artistNameLabel.text = artist
        
        return cell
    }
    
    
    
    
}
