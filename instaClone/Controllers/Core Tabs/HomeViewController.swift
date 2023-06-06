//
//  ViewController.swift
//  instaClone
//
//  Created by Ashish Jain on 04/06/23.
//

import UIKit
import FirebaseAuth

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated) 
        handleNonAuthencticated()
    }
    
    
    private func handleNonAuthencticated(){
        // Check login Status
        if Auth.auth().currentUser == nil{
             // Show Login
            let loginVc = LoginViewController()
            loginVc.modalPresentationStyle = .fullScreen
            present(loginVc, animated: false )
            
        }
    }
    
}

