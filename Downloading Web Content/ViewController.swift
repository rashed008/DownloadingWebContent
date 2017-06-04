//
//  ViewController.swift
//  Downloading Web Content
//
//  Created by RASHED on 6/3/17.
//  Copyright © 2017 RASHED. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var webview: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       /*
        let url = URL(string: "http://www.stackoverflow.com")!
        //webview.loadRequest(URLRequest(url: url))
        webview.loadHTMLString("<h1>Hello World</h1>", baseURL: nil)
 
      */
        
        if let url = URL(string: "https://www.stackoverflow.com"){
        let request = NSMutableURLRequest(url : url)
            let task = URLSession.shared.dataTask(with: request as URLRequest) {
             data, response, error in
                
                if error != nil {
                  print(error)
                } else {
                
                    if let unwrapedData = data {
                        let dataString = NSString(data : unwrapedData, encoding: String.Encoding.utf8.rawValue)
                        
                        print(dataString)
                        
                        DispatchQueue.main.sync(execute: {
                        
                           //update ui
                        })
                    }
                }
            
            }
            task.resume()
            
        }
        
        print ("hi there")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

