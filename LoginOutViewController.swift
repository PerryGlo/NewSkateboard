//
//  LoginOutViewController.swift
//  SkateBoard design Blueprints
//
//  Created by Perry G.L.O on 8/4/16.
//  Copyright © 2016 Perry G.L.O. All rights reserved.
//

import UIKit

class LoginOutViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .Plain, target: self, action: #selector(handleLogout))
    }
    
    func handleLogout() {
        let loginOutViewController = LoginOutViewController()
        presentViewController(loginOutViewController, animated: true, completion: nil)
    }
    
}