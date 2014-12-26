//
//  ViewController.swift
//  ImagesDemo
//
//  Created by Marco F.A. Corzani on 25.12.14.
//  Copyright (c) 2014 Alphaweb. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate,UINavigationControllerDelegate {

    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func imageButtonPressed(sender: AnyObject) {
    
    
        var imagePicker = UIImagePickerController()
        
        imagePicker.delegate = self
        
        var sourceType = UIImagePickerControllerSourceType.SavedPhotosAlbum   //Camera mal versuchen
        
        if UIImagePickerController.isSourceTypeAvailable(sourceType) {
        
        imagePicker.sourceType = sourceType
            
        //show a screen
            
        presentViewController(imagePicker, animated: true, completion: nil)
        
        }
        
    }

    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {
        
        var image = info[UIImagePickerControllerOriginalImage] as UIImage
        
        imageView.image = image
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        println("Cancel")
        
        dismissViewControllerAnimated(true, completion: nil)
    }
}

