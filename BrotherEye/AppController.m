//
//  AppController.m
//  BrotherEye
//
//  Created by Kevin Sangwoo Hahn on 3/22/13.
//  Copyright (c) 2013 MacroHatch. All rights reserved.
//

#import "AppController.h"


@implementation AppController

- (void) awakeFromNib{
    
    //Create the NSStatusBar and set its length
    statusItem = [[[NSStatusBar systemStatusBar] statusItemWithLength:NSSquareStatusItemLength] retain];
    
    //Used to detect where our files are
    NSBundle *bundle = [NSBundle mainBundle];
    
    //Allocates and loads the images into the application which will be used for our NSStatusItem
    statusImage = [[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:@"icon_16x16" ofType:@"png"]];
    statusHighlightImage = [[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:@"icon_16x16" ofType:@"png"]];

    //Sets the images in our NSStatusItem
    [statusItem setImage:statusImage];
    [statusItem setAlternateImage:statusHighlightImage];
    
    //Tells the NSStatusItem what menu to load
    [statusItem setMenu:statusMenu];
    //Sets the tooptip for our item
    [statusItem setToolTip:@"BrotherEye"];
    
    //Enables highlighting
    [statusItem setHighlightMode:YES];
}

- (void) dealloc {
    //Releases the 1 images loaded into memory
    [statusImage release];
    [statusHighlightImage release];
    [super dealloc];
}

-(IBAction)screenCapture:(id)sender{
    system("screencapture -T 1 -t jpg ~/Desktop/${USER}$(date '+%Y-%m-%d_%H%M%S_screenCapture.jpg')");
}

-(IBAction)windowCapture:(id)sender{
    system("sleep 0.5; screencapture -w -t jpg ~/Desktop/${USER}$(date '+%Y-%m-%d_%H%M%S_windowCapture.jpg')");
}

-(IBAction)regionCapture:(id)sender{
    system("sleep 0.5; screencapture -s -t jpg ~/Desktop/${USER}$(date '+%Y-%m-%d_%H%M%S_regionCapture.jpg')");
}

-(IBAction)about:(id)sender{
    NSApplication *app=[NSApplication sharedApplication];
	[app activateIgnoringOtherApps:YES];
	[app orderFrontStandardAboutPanel:NULL];
}


@end