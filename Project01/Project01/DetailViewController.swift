//
//  DetailViewController.swift
//  Project01
//
//  Created by Tyler Arnold on 4/20/18.
//  Copyright © 2018 Tyler Arnold. All rights reserved.
//

import Cocoa

class DetailViewController: NSViewController {

    @IBOutlet var imageView: NSImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    func imageSelected(name: String) {
        imageView.image = NSImage(named: NSImage.Name(rawValue: name))
    }
    
}
