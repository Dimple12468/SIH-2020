//
//  ViewController.swift
//  Trackify-iOS
//
//  Created by UIET_MAC3 on 1/19/20.
//  Copyright © 2020 Harleen Singh. All rights reserved.
//

import UIKit
import FirebaseAuth

class OutputSelectViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
    }
    
    @IBAction func LogoutButtonPressed(_ sender: UIBarButtonItem) {
        
        do {
            try Auth.auth().signOut()
            navigationController?.popToRootViewController(animated: true)
        } catch let signOutError as NSError {
          print ("Error signing out: %@", signOutError)
        }
          
    }
    
    

}

