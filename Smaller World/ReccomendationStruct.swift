//
//  ReccomendationStruct.swift
//  Smaller World
//
//  Created by Peter Irving on 3/13/19.
//  Copyright © 2019 Peter Irving. All rights reserved.
//

import Foundation

struct Reccomendations: Codable {
    let artists: Artists?
    let hotels, restaurants: Hotels?
}

struct Artists: Codable {
    let affinity: Double?
    let reccs: [String]?
}

struct Hotels: Codable {
    let affinity: Double?
    let location: [Location]?
    let reccs: [String]?
}

struct Location: Codable {
    let lat, lng: Double?
}
