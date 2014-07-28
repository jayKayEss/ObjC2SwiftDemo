//
//  FooTextView.swift
//  ObjC2SwiftDemo
//
//  Created by Justin Sheckler on 7/28/14.
//  Copyright (c) 2014 Justin Sheckler. All rights reserved.
//

import Cocoa

class FooTextView: NSView {

    init(frame: NSRect) {
        super.init(frame: frame)
        // Initialization code here.
    }

    override func drawRect(dirtyRect: NSRect) {
        super.drawRect(dirtyRect)

        let str = "Foo"
//        let str:NSString = "Foo"
        let font = NSFont(name:"Times-Italic", size:180)
        let foregroundColor = NSColor.randomColor();
        
        let attr = [
            NSFontAttributeName: font,
            NSForegroundColorAttributeName: foregroundColor
        ]
        
        let bbox = str.sizeWithAttributes(attr)
        let frame = self.bounds
        
        var pos = NSPoint()
//        var pos = NSPoint(x:0, y:0)
        pos.x = (frame.origin.x + ((frame.size.width - bbox.width) / 2))
        pos.y = (frame.origin.y + ((frame.size.height - bbox.height) / 2))
        
        // Clear window and draw the text
        NSColor.randomColor().set()
        NSRectFill(self.bounds)
        str.drawAtPoint(pos, withAttributes:attr)
        
        // Drawing code here.
    }
    
}
