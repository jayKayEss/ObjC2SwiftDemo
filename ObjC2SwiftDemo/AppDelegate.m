//
//  AppDelegate.m
//  ObjC2SwiftDemo
//
//  Created by Justin Sheckler on 7/28/14.
//  Copyright (c) 2014 Justin Sheckler. All rights reserved.
//

#import "AppDelegate.h"
//#import "FooTextView.h"
#import "Objc2SwiftDemo-Swift.h"

@interface AppDelegate ()
            
@property (weak) IBOutlet NSWindow *window;


@end

@implementation AppDelegate
            
- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {

    FooTextView *theView = [[FooTextView alloc] initWithFrame:[self.window.contentView frame]];
    [self.window.contentView addSubview:theView];
}

@end
