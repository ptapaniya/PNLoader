//
//  ViewController.swift
//  MYLoader
//
//  Created by prakash on 14/04/18.
//  Copyright © 2018 prakash. All rights reserved.
//

import UIKit
import PNLoader

class ViewController: UIViewController {

    
    @IBOutlet weak var loaderUIView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        PNLoader.showLoading("Loading", disableUI: true)
        Timer.scheduledTimer(timeInterval: 5.0, target: self, selector: #selector(hideLoader), userInfo: nil, repeats: false)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @objc func hideLoader(){
        PNLoader.hide()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnStart(_ sender: Any) {
        PNLoader.showLoading("Loading", disableUI: false)

    }
    
    @IBAction func btnStop(_ sender: Any) {
        PNLoader.hide()

    }
    
    
}

