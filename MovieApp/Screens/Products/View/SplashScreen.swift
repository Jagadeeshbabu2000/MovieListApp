//
//  SplashScreen.swift
//  MovieApp
//
//  Created by Jagadeesh K on 28/08/24.
//

import UIKit

class SplashScreen: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            self.NavigationController()
        }
    }
    private func NavigationController() {
        let mainVC = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        mainVC.modalTransitionStyle = .crossDissolve
        mainVC.modalPresentationStyle = .fullScreen
        self.present(mainVC, animated: true, completion: nil)
    }
    
    
}

