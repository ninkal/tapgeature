//
//  ViewController.swift
//  tapgesture
//
//  Created by NINKAL GUPTA on 24/04/20.
//  Copyright © 2020 NINKAL GUPTA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var view1: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabelTap()
        
        
    }
    
       func setupLabelTap() {
              let labelTap = UITapGestureRecognizer(target: self, action: #selector(self.labelTapped(_:)))
              self.view1.isUserInteractionEnabled = true
              self.view1.addGestureRecognizer(labelTap)
              // self.viewProfileBtn.isHidden = false
    }
       
          @objc func labelTapped(_ sender: UITapGestureRecognizer) {
            
              print("viewProfileBtn")
              
          }

    
    
    
    
    
}

