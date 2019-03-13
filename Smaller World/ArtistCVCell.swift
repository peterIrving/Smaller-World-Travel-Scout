//
//  ArtistCVCell.swift
//  Smaller World
//
//  Created by Peter Irving on 3/13/19.
//  Copyright © 2019 Peter Irving. All rights reserved.
//

import UIKit

class ArtistCVCell: UICollectionViewCell {
    
    @IBOutlet weak var artistImageView: CustomImageView! {
        didSet{
            artistImageView.clipsToBounds = true
            artistImageView.layer.cornerRadius = artistImageView.frame.height / 2
        }
    }
    
    @IBOutlet weak var artistNameLabel: UILabel!
    
}
