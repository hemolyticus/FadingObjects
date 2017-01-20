//
//  ViewController.swift
//  FadingObjects
//
//  Created by Mel John del Barrio on 20/01/17.
//  Copyright © 2017 Mel John del Barrio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet var slider: UISlider!
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func fadeIn(_ sender: Any)
    {
        
        UIView.animate(withDuration: 5, animations: {
        
        
            self.label.alpha = 1;
            self.slider.value = 1
        })
        
    }

    @IBAction func fadeOut(_ sender: Any)
    {
        
        UIView.animate(withDuration: 1, animations: {
            
            
            self.label.alpha = 0;
            self.slider.value = 0;
        })
        
        
    }
    
    @IBAction func alphaSlider(_ sender: Any) {
        
        label.alpha = CGFloat(slider.value)
        
    }
    
}

