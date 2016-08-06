//
//  ViewController.swift
//  practice5
//
//  Created by Admin on 7/31/16.
//  Copyright © 2016 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = Timer()
    
    var time = 0
    
    func startTime(){
    
        if time >= 0 {
         
            time += 1
            
            displayLbl.text = String(time)
        }
    
    }

    @IBOutlet var displayLbl: UILabel!
    
    @IBAction func startBtn(_ sender: AnyObject) {
    
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.startTime), userInfo: nil, repeats: true)
    
    }
    
    @IBAction func stopBtn(_ sender: AnyObject) {
    
        timer.invalidate()
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
