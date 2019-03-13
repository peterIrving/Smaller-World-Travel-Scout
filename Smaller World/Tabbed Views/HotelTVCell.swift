//
//  HotelTVCell.swift
//  Smaller World
//
//  Created by Peter Irving on 3/13/19.
//  Copyright © 2019 Peter Irving. All rights reserved.
//

import UIKit

class HotelTVCell: UITableViewCell {

    @IBOutlet weak var hotelImageView: UIImageView! {
        didSet {
            hotelImageView.clipsToBounds = true
            hotelImageView.layer.cornerRadius = hotelImageView.frame.height / 5
        }
    }
    @IBOutlet weak var hotelNameLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
