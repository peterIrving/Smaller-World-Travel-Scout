//
//  ReccomendationStruct.swift
//  Smaller World
//
//  Created by Peter Irving on 3/13/19.
//  Copyright © 2019 Peter Irving. All rights reserved.
//

import Foundation

struct Reccomendations: Codable {
    let artists, hotels, restaurants: Artists?
}

struct Artists: Codable {
    let affinity: Double?
    let reccs: [String]?
}
