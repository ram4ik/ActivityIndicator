//
//  ViewController.swift
//  ActivityIndicator
//
//  Created by ramil on 02.06.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var activityIndicator: UIActivityIndicatorView = UIActivityIndicatorView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonStart(_ sender: Any) {
        
        activityIndicator.center = self.view.center
        activityIndicator.hidesWhenStopped = true
        self.view.addSubview(activityIndicator)
        
        activityIndicator.startAnimating()
    }
    
    @IBAction func buttonStop(_ sender: Any) {
        
        self.activityIndicator.stopAnimating()
    }

}

