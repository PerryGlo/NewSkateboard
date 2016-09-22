//
//  ViewFiveController.swift
//  SkateBoard design Blueprints
//
//  Created by Perry G.L.O on 8/4/16.
//  Copyright © 2016 Perry G.L.O. All rights reserved.
//

import UIKit


class ViewFiveController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    @IBAction func PurchaseButton(sender: AnyObject) {
        
        if let url = NSURL(string:"https://www.paypal.com"){
            UIApplication.sharedApplication().openURL(url)
        }
        
        
    }
    

    @IBOutlet var imageView: UIImageView!
    
    var imagePicker = UIImagePickerController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imageView.image = UIImage(named:"Choose-Image.png")
        imagePicker.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cameraButton(sender: UIBarButtonItem) {
        
        imagePicker.sourceType = UIImagePickerControllerSourceType.Camera
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    
    @IBAction func libraryBtn(sender: AnyObject) {
        
        imagePicker.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        presentViewController(imagePicker, animated: true, completion: nil)
        
    }
    
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        
        imageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        imageView.contentMode = UIViewContentMode.ScaleAspectFit
        
        self.dismissViewControllerAnimated(true, completion: {})
    }
    
}
    
    
 