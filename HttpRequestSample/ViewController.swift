//
//  ViewController.swift
//  HttpRequestSample
//
//  Created by Yeni Kullanıcı on 20.09.2020.
//  Copyright © 2020 Busra Nur OK. All rights reserved.
//


//HTTP GET Request kullanarak api den veri almak (HTTP request : get (almak), post(göndermek))

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var urlTextField: UITextField!
    @IBOutlet weak var sendButton: UIButton!
    
    var sendUrlString : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toSendVC" {
            
            let destinationVC = segue.destination as! SendViewController
            destinationVC.responseUrlString = sendUrlString
            
        }
    }
    
    
    @IBAction func sendClicked(_ sender: Any) {
        
        sendUrlString = urlTextField.text as! String
        
        performSegue(withIdentifier: "toSendVC", sender: nil)
        
    }
    
    


}

