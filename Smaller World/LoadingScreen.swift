//
//  LoadingScreen.swift
//  Smaller World
//
//  Created by Peter Irving on 3/13/19.
//  Copyright © 2019 Peter Irving. All rights reserved.
//


import UIKit

class LoadingScreen{
    
    var loadingIcon = UIActivityIndicatorView()
    static let shared = LoadingScreen()
    
    //function starts the loading screen
    func startLoadingIcon(view: UIView, opasitatedBackground: Bool, isLargeIcon: Bool){
        let screenWidth = UIScreen.main.bounds.width
        let sceenHeight = UIScreen.main.bounds.height
        
        self.loadingIcon.hidesWhenStopped = true
        self.loadingIcon.style = UIActivityIndicatorView.Style.white
        
        if isLargeIcon{
            loadingIcon.style = UIActivityIndicatorView.Style.whiteLarge
        }
        
        view.addSubview(loadingIcon)
        loadingIcon.frame = view.frame
        loadingIcon.center = CGPoint(x: screenWidth/2, y: sceenHeight/2)
        
        if opasitatedBackground{
            let lightBlack = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.65)
            loadingIcon.backgroundColor = lightBlack
        }
        else{
            loadingIcon.backgroundColor = UIColor.clear
        }
        
        DispatchQueue.main.async {
            self.loadingIcon.startAnimating()
        }
        
        
    }
    
    //function ends the loading screen
    func stopLoadingScreen(){
        DispatchQueue.main.async {
            self.loadingIcon.stopAnimating()
            self.loadingIcon.removeFromSuperview()
            UIApplication.shared.endIgnoringInteractionEvents()
        }
        
    }
    
}
