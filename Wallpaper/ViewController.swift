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
    var lastDate = moment(["year": 1991, "second": 00, "month": 09, "minute": 00, "hour": 03, "day": 09]);

    override func viewDidLoad() {
        super.viewDidLoad()
        lastDate = lastDate!.add(80, .Years)
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "updateTime", userInfo: nil, repeats: true)

    }
    
    func updateTime() {
        let difference = lastDate! - moment();
        timeTextField.stringValue = difference.description
    }

    @IBOutlet weak var timeTextField: NSTextField!
}

