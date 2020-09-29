//
//  SendViewController.swift
//  HttpRequestSample
//
//  Created by Yeni Kullanıcı on 20.09.2020.
//  Copyright © 2020 Busra Nur OK. All rights reserved.
//

import UIKit

class SendViewController: UIViewController {
    
    @IBOutlet weak var contentLabel: UILabel!
    
    var responseUrlString : String = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL(string: responseUrlString)!
        
        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
            guard let data = data else { return }
        
        }
        
        do {
            
            let myHTMLString = try String(contentsOf: url, encoding: .ascii)
            print("HTML : \(myHTMLString)")
            contentLabel.text = myHTMLString
            
        } catch let error {
            
            print("Error: \(error)")
            
        }
        
        task.resume()
        
    }
    
}
