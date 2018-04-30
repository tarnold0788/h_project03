//
//  WindowController.swift
//  Project03
//
//  Created by Tyler Arnold on 4/30/18.
//  Copyright © 2018 Tyler Arnold. All rights reserved.
//

import Cocoa

class WindowController: NSWindowController {
    
    @IBOutlet var shareButton: NSButton!
    
    override func windowDidLoad() {
        super.windowDidLoad()
    
        shareButton.sendAction(on: .leftMouseDown)
    }

    @IBAction func sharedClicked(_ sender: NSView) {
        guard let split = contentViewController as? NSSplitViewController else { return }
        guard let detail = split.childViewControllers[1] as? DetailViewController else { return }
        guard let image = detail.imageView.image else { return }
        
        let picker = NSSharingServicePicker(items: [image])
        
        picker.show(relativeTo: .zero, of: sender, preferredEdge: .minY)
    }
}
