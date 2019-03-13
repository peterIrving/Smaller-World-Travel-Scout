//
//  Networking.swift
//  Smaller World
//
//  Created by Peter Irving on 3/13/19.
//  Copyright © 2019 Peter Irving. All rights reserved.
//

import UIKit

class NetworkingClient {
    
    //https://sxswhack2019-travelscout.herokuapp.com/qloo/John%20Coltrane+Frank%20Sinatra/30.2615/-97.7181/5
    
    func grabReccomendations(_ url: URL, /*, stringOfArtists: String?, lat: String?, lon: String?,*/ callback: @escaping(Reccomendations?, Error?) -> ()) {
        
    
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            if let error = error {
                print(error.localizedDescription)
                callback(nil, error)
            }
            // also check response status 200 okay
            
            guard let data = data else { return }
            
            do {
                let reccomendations = try JSONDecoder().decode(Reccomendations.self, from: data)
                print("reccomendations Decoded")
                callback(reccomendations, nil)
                
            } catch {
                print(error, "error parsing")
                callback(nil, error)
            }
            }.resume()
    }
}
