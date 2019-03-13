//
//  EditArtistsVC.swift
//  Smaller World
//
//  Created by Peter Irving on 3/12/19.
//  Copyright © 2019 Peter Irving. All rights reserved.
//

import UIKit

class EditArtistsVC: UIViewController {
    
    @IBOutlet weak var continueBtn: UIButton!{
        didSet{
            continueBtn.clipsToBounds = true
            continueBtn.layer.cornerRadius = continueBtn.frame.height / 2
            
        }
    }
    @IBOutlet weak var grungeView: UIView!{
        didSet{
            grungeView.clipsToBounds = true
            grungeView.layer.cornerRadius = grungeView.frame.height / 2
            
        }
    }
    @IBOutlet weak var britishView: UIView!{
        didSet{
            britishView.clipsToBounds = true
            britishView.layer.cornerRadius = britishView.frame.height / 2
            
        }
    }
    
    var topArtists: TopArtists?
    
    @IBOutlet weak var cv: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       // let file = Bundle.main.path(forResource: "PetersData", ofType: "txt")!
        let json = petersData.data(using: .utf8)!
        
        do {
            topArtists = try JSONDecoder().decode(TopArtists.self, from: json)
        } catch {
            print("error decoding json")
        }
        
    }
    
}



extension EditArtistsVC: UICollectionViewDataSource,UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "ArtistCell" , for: indexPath) as! ArtistCVCell
        
        if let artists = topArtists?.items! {
            
            let artist = artists[indexPath.row]
            
            let imageURL = artist.images![0].url
            print(imageURL)
            cell.artistImageView.loadImageUsingURL(urlString: imageURL!)
            cell.artistNameLabel.text = artist.name
            
        }
        cell.layoutIfNeeded()
        
        return cell
    }
    
    
    
    
}
