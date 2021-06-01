//
//  Vitale.swift
//  Vitale
//
//  Created by Miguel on 02/07/2020.
//  Copyright © 2020 Vitale. All rights reserved.
//

import Foundation
import UIKit

public class MyVitaleSDK{
    
    public static let sharedInstance = MyVitaleSDK()
    private var client_id: String!
    private var client_secret: String!
    private var domain: String?
    
    public func start(with user: String, clientId: String, clientSecret: String, domain: String?){
        self.client_id = clientId
        self.client_secret = clientSecret
        self.domain = domain
        VitaleAuth.sharedInstance.start(with: user, client: clientId, secret: clientSecret, domain: domain)
    }
    
    public func logout(){
        VitaleAuth.sharedInstance.logout()
    }
    
    public func setVitaleColor(color: String){
        Vitale.sharedInstance.setPrimaryColor(color: color)
    }
    
    public func setNavigationBarColor(color: String){
        Vitale.sharedInstance.setNavigationBarColor(color: color)
    }
    
    public func setNavigationTintColor(color: String){
        Vitale.sharedInstance.setNavigationTintColor(color: color)
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
    
    public func showWearables(){
        VitaleWorkoutController.sharedInstance.getWearables { (viewController) in
            if let topViewController = UIApplication.shared.keyWindow?.rootViewController{
                viewController?.modalPresentationStyle = .fullScreen
                topViewController.present(viewController!, animated: true, completion: nil)
            }
        }
    }
    
    public func showTrainingModule(){
        VitaleWorkoutController.sharedInstance.getTraining { (viewController) in
            if let topViewController = UIApplication.shared.keyWindow?.rootViewController{
                viewController?.modalPresentationStyle = .fullScreen
                topViewController.present(viewController!, animated: true, completion: nil)
            }
        }
    }
    
    public func showNutritionModule(){
        VitaleWorkoutController.sharedInstance.getNutrition { (viewController) in
            if let topViewController = UIApplication.shared.keyWindow?.rootViewController{
                viewController?.modalPresentationStyle = .fullScreen
                topViewController.present(viewController!, animated: true, completion: nil)
            }
        }
    }
    
    public func showStats(){
        VitaleWorkoutController.sharedInstance.getStats { (viewController) in
            if let topViewController = UIApplication.shared.keyWindow?.rootViewController{
                viewController?.modalPresentationStyle = .fullScreen
                topViewController.present(viewController!, animated: true, completion: nil)
            }
        }
    }
    
    public func showTodaytraining(){
        VitaleWorkoutController.sharedInstance.showTodayTraining { (alert, viewController) in
            if let topViewController = UIApplication.shared.keyWindow?.rootViewController{
                if alert != nil{
                    Alerts.showAlert(alertMessage: alert?.localizedDescription ?? "", alertTitle: "", viewController: topViewController)
                }else{
                    viewController?.modalPresentationStyle = .fullScreen
                    topViewController.present(viewController!, animated: true, completion: nil)
                }
            }
        }
    }
    
    
    public func getWearablesController( _ cb: @escaping ((_ controller: UIViewController?)->())){
        let vc = WefitterViewController()
        cb(vc)
    }
    
    public func getStatsController( _ cb: @escaping ((_ controller: UIViewController?)->())){
        let storyboard = UIStoryboard(name: "Stats", bundle: GlobalConfigs.VITALE_BUNDLE)
        let vc = storyboard.instantiateViewController(withIdentifier: "StatsViewController")
        cb(vc)
    }
    
    
}
