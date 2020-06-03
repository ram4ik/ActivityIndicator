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
    
    @IBOutlet weak var lblText: UILabel!
    
    @IBAction func showAlert(_ sender: Any) {
        
        createAlert(title: "Do you like Swift?", message: "Do you?")
    }
    
    func createAlert(title: String, message: String) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "Yes", style: UIAlertAction.Style.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
            self.lblText.text = "Yes. I like swift!"
        }))
        
        alert.addAction(UIAlertAction(title: "No", style: UIAlertAction.Style.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
            self.lblText.text = "No. I don't like swift."
        }))
        
        self.present(alert, animated: true, completion: nil)
    }

}

