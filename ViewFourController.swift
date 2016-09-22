//
//  ViewFourController.swift
//  SkateBoard design Blueprints
//
//  Created by Perry G.L.O on 8/4/16.
//  Copyright © 2016 Perry G.L.O. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ViewFourController: UIViewController {
    
    @IBOutlet weak var bannerview: GADBannerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Google Mobile Ads SDK version: \(GADRequest.sdkVersion())")
        bannerview.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        bannerview.rootViewController = self
        bannerview.loadRequest(GADRequest())
    }
    
}
    

