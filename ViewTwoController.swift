//
//  ViewTwoController.swift
//  SkateBoard design Blueprints
//
//  Created by Perry G.L.O on 8/4/16.
//  Copyright © 2016 Perry G.L.O. All rights reserved.
//

import UIKit

class ViewTwoController: UIViewController {
    
    
    @IBOutlet var videoView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let youtubeURl =  "ttps://www.youtube.com/embed/QQ2KIlTPVRQ"
        videoView.allowsInlineMediaPlayback = true
        videoView.loadHTMLString("<iframe width=\"640\" height=\"360\" src=\"\(youtubeURl)?&playsinline=1\" frameborder=\"0\" allowfullscreen></iframe>", baseURL: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
