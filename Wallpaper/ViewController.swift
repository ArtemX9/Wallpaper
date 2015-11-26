//
//  ViewController.swift
//  Wallpaper
//
//  Created by Артем Труханов on 23.11.15.
//  Copyright © 2015 TRUe_ART. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    var timer: NSTimer!
    var num = 80

    override func viewDidLoad() {
        super.viewDidLoad()
        timer = NSTimer.scheduledTimerWithTimeInterval(0.5, target: self, selector: "updateTime", userInfo: nil, repeats: true)

    }
    
    func updateTime() {
        
//        let 
        
        let after66Years = NSDate(timeIntervalSinceNow: 60 * 60 * 24 * 365 * 66)
        
        timeTextField.stringValue = String(after66Years.timeIntervalSinceNow)
        
//        let lastDate = 
    }

    @IBOutlet weak var timeTextField: NSTextField!

}

