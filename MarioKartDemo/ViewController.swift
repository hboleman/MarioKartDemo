//
//  ViewController.swift
//  MarioKartDemo
//
//  Created by Hunter Boleman on 3/16/19.
//  Copyright © 2019 Hunter Boleman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Outlets
    @IBOutlet weak var kartView0: UIImageView!
    @IBOutlet weak var kartView1: UIImageView!
    @IBOutlet weak var kartView2: UIImageView!
    
    // Global Variables
    var startingPointKartView0 = CGPoint();
    var startingPointKartView1 = CGPoint();
    var startingPointKartView2 = CGPoint();
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Store kart starting locations
        startingPointKartView0 = kartView0.center;
        startingPointKartView1 = kartView1.center;
        startingPointKartView2 = kartView2.center;
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
    
    @IBAction func didRotateKartView(_ sender: UIRotationGestureRecognizer) {
        let rotation = sender.rotation;
        let kartView = sender.view!;
        kartView.transform = CGAffineTransform(rotationAngle: rotation);
        
        print("rotation: \(rotation)")
    }
    
    
    @IBAction func didTapKartView(_ sender: UITapGestureRecognizer) {
        let kartView = sender.view!
        
        UIView.animate(withDuration: 0.9) {
            // Closure body
            kartView.center.x += 400
        }
        
        print("Double tap recognized")
    }
    
    @IBAction func didLongPressBackground(_ sender: UILongPressGestureRecognizer) {
        // Reset Karts with animation
        UIView.animate(withDuration: 0.8) {
            // Reset position
            self.kartView0.center = self.startingPointKartView0
            self.kartView1.center = self.startingPointKartView1
            self.kartView2.center = self.startingPointKartView2
            
            // Reset scale and roatation
            self.kartView0.transform = CGAffineTransform.identity
            self.kartView1.transform = CGAffineTransform.identity
            self.kartView2.transform = CGAffineTransform.identity
}
    }
    
    
}

