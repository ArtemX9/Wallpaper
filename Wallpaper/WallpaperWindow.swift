//
//  123.swift
//  Wallpaper
//
//  Created by Артем Труханов on 23.11.15.
//  Copyright © 2015 TRUe_ART. All rights reserved.
//

import Cocoa
import Quartz

class WallpaperWindow: NSWindowController {

    override func windowDidLoad() {
        super.windowDidLoad()
        window!.level = Int(CGWindowLevelForKey(.DesktopWindowLevelKey))
        window!.collectionBehavior = [.CanJoinAllSpaces, .Stationary, .IgnoresCycle]
        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }
    override init(window: NSWindow?) {
        super.init(window: window)
        window!.level = Int(CGWindowLevelForKey(.DesktopWindowLevelKey))
        window!.collectionBehavior = [.CanJoinAllSpaces, .Stationary, .IgnoresCycle]
        
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
}
