//
//  Vitale.swift
//  Vitale
//
//  Created by Miguel on 02/07/2020.
//  Copyright © 2020 Vitale. All rights reserved.
//

import Foundation
import UIKit

public class VitaleSDK{
    
    public static let sharedInstance = VitaleSDK()
    private var client_id: String!
    private var client_secret: String!
    
    public func start(with user: String, clientId: String, clientSecret: String){
        client_id = clientId
        client_secret = clientSecret
        VitaleAuth.sharedInstance.start(with: user, client: clientId, secret: clientSecret)
    }
    
    public func showSportProfile(){
        SportProfileController.sharedInstance.getProfileController { (error, viewController) in
            if error == nil{
                if let topViewController = UIApplication.shared.keyWindow?.rootViewController{
                    viewController?.modalPresentationStyle = .fullScreen
                    topViewController.present(viewController!, animated: true, completion: nil)
                }
            }else{
                
            }
        }
    }
    
    public func setVitaleColor(color: UIColor){
        Vitale.sharedInstance.setPrimaryColor(color: color)
    }
    
    public func setNavigationBarColor(color: UIColor){
        Vitale.sharedInstance.setNavigationBarColor(color: color)
    }
    
    public func setNavigationTintColor(color: UIColor){
        Vitale.sharedInstance.setNavigationTintColor(color: color)
    }
    
    public func setRegularFont(name: String){
        Vitale.sharedInstance.setRegularFont(name)
    }
    
    public func setBoldFont(name: String){
        Vitale.sharedInstance.setBoldFont(name)
    }
    
    public func setNavigationImage(image: UIImage?){
        Vitale.sharedInstance.setSmallLogo(logo: image)
    }
    
    public func showVirtualPT(){
        VitaleWorkoutController.sharedInstance.getVirtualController { (error, viewController) in
            if error == nil{
                if let topViewController = UIApplication.shared.keyWindow?.rootViewController{
                    viewController?.modalPresentationStyle = .fullScreen
                    topViewController.present(viewController!, animated: true, completion: nil)
                }
            }else{
                
            }
        }
    }
    
}
