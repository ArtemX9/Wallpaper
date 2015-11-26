//
//  AppDelegate.swift
//  Wallpaper
//
//  Created by Артем Труханов on 23.11.15.
//  Copyright © 2015 TRUe_ART. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    var statusItem: NSStatusItem!
    var darkModeOn: Bool!

    

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        statusItem = NSStatusBar.systemStatusBar().statusItemWithLength(NSVariableStatusItemLength)
        statusItem.image = NSImage(named: "clock")
        statusItem.action = Selector("itemClicked:")
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }

    func itemClicked(sender: AnyObject) {
        
        let alert = NSAlert()
        alert.messageText = "Signal acknowledged"
        alert.addButtonWithTitle("Clicked")
        alert.informativeText = "Item was clicked"
        alert.runModal()
    }
}

