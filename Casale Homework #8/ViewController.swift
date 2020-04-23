//
//  ViewController.swift
//  Casale Homework #8
//
//  Created by Amy Casale on 4/22/20.
//  Copyright © 2020 Amy Casale. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var outputLabel: UILabel!
    var originalRect: CGRect!
    @IBOutlet weak var imageView: UIImageView!
    
  

    @IBAction func foundTap(_ sender: Any) {
        
        outputLabel.text = "You tapped the bunny!"
    }
    
    
 
    @IBAction func pinch(_ sender: Any) {
        
        outputLabel.text = "You pinched the bunny!"
        
        var recognizer: UIPinchGestureRecognizer
        var feedback: String
        var scale: CGFloat
        
        recognizer=sender as! UIPinchGestureRecognizer
        scale=recognizer.scale
        
        feedback=String(format: "Pinched, Scale: %1.2f, Velocity: %1.2f" ,
        Float(recognizer.scale),Float(recognizer.velocity))
        
        outputLabel.text=feedback
        
        imageView.frame = CGRect(origin: CGPoint(x: self.originalRect.origin.x,y : originalRect.origin.y), size: CGSize(width: originalRect.size.width*scale, height: originalRect.size.height*scale))
        
        
    }
    
    

 override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
 
    
    }



}
