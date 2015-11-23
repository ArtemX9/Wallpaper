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
        window!.collectionBehavior = [.CanJoinAllSpaces, .Stationary, .IgnoresCycle, .FullScreenPrimary]
        window!.styleMask = NSBorderlessWindowMask
        window!.setFrame(screenResolution(), display: true)

    }
    
    override init(window: NSWindow?) {
        super.init(window: window)
        window!.level = Int(CGWindowLevelForKey(.DesktopWindowLevelKey))
        window!.collectionBehavior = [.CanJoinAllSpaces, .Stationary, .IgnoresCycle, .FullScreenPrimary]
        
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func screenResolution() -> NSRect {
        return NSScreen.screens()![0].frame
    }
}
