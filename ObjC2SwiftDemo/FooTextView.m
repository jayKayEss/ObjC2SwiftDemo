//
//  FooTextView.m
//  ObjC2SwiftDemo
//
//  Created by Justin Sheckler on 7/28/14.
//  Copyright (c) 2014 Justin Sheckler. All rights reserved.
//

#import "FooTextView.h"
#import "NSColor+Random.h"

@implementation FooTextView

- (instancetype)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
    }
    return self;
}

- (void)drawRect:(NSRect)dirtyRect
{
    [super drawRect:dirtyRect];
    
    NSString *str = @"Foo";
    NSFont *font = [NSFont fontWithName:@"Times-Italic" size:180];
    NSColor *foregroundColor = [NSColor randomColor];
    
    NSDictionary *attr = @{
                           NSFontAttributeName: font,
                           NSForegroundColorAttributeName: foregroundColor
                           };
    
    NSSize bbox = [str sizeWithAttributes:attr];
    NSRect frame = [self bounds];
    NSPoint pos;
    pos.x = (frame.origin.x + ((frame.size.width  - bbox.width)  / 2));
    pos.y = (frame.origin.y + ((frame.size.height - bbox.height) / 2));
    
    // Clear window and draw the character.
    [[NSColor randomColor] set];
    NSRectFill([self bounds]);
    [str drawAtPoint:pos withAttributes:attr];
}

@end
