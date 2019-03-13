//
//  RecArtistsVC.swift
//  Smaller World
//
//  Created by Peter Irving on 3/13/19.
//  Copyright © 2019 Peter Irving. All rights reserved.
//

import UIKit

var austinClicked = false

class RecArtistsVC: UIViewController {

    @IBOutlet weak var cv: UICollectionView!
    
    let austinArtists = ["J-Hen","Hikes","J. Soulja","Ume","Western Youth","Go Fever","San Saba Country","Calliope Musicals","Deanna Wheeler","Hard Proof","Ladi Earth","Explosions in the Sky","Will Johnson","Gina Chavez","A. Sinclair"]
    
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
        return 15
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "RecArtistCell", for: indexPath) as! RecArtistCVCell
        
        var imageString: String? = "avatar"
        
        cell.artistImageView.image = UIImage(named: imageString!)
        
        if austinClicked {
            cell.artistNameLabel.text = austinArtists[indexPath.row]
        } else {
            let artist = recomendations?.artists!.reccs![indexPath.row]
            cell.artistNameLabel.text = artist
        }
        return cell
    }
    
    
    
    
}
