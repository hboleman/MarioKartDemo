//
//  ViewController.swift
//  MarioKartDemo
//
//  Created by Hunter Boleman on 3/16/19.
//  Copyright © 2019 Hunter Boleman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

   
    @IBAction func didPanKartView(_ sender: UIPanGestureRecognizer) {
        let location = sender.location(in: view);
        
        print("Location: x: \(location.x), y: \(location.y)")
    }
    
}

