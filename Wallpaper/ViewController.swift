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

//        timer
        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    func updateTime() {
        num--
        timeTextField.integerValue = num
    }

    @IBOutlet weak var timeTextField: NSTextField!

}

