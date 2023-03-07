//
//  SplashScreenViewController.swift
//  TsotsiWeatherApp
//
//  Created by Lesego Mogorosi on 2023/03/07.
//

import UIKit

class SplashScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        let imageView = UIImageView(frame: UIScreen.main.bounds)
                imageView.image = UIImage(named: "TSOTSI")
        imageView.contentMode = .center
                view.addSubview(imageView)
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
        let navigationController = UINavigationController(rootViewController: MainViewController())
            navigationController.modalPresentationStyle = .fullScreen
          self.present(navigationController,animated: true, completion: nil)
        }
        
        
        
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    



}
