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
        let kartView = sender.view!
        kartView.center = location;
        
        print("Location: x: \(location.x), y: \(location.y)")
    }
    
    @IBAction func didPinchKartView(_ sender: UIPinchGestureRecognizer) {
        let scale = sender.scale;
        let kartView = sender.view!
        kartView.transform = CGAffineTransform(scaleX: scale, y: scale);
        
        print("scale: \(scale)");
        
    }
    
    
}

