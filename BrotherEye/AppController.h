//
//  AppController.h
//  BrotherEye
//
//  Created by Kevin Sangwoo Hahn on 3/22/13.
//  Copyright (c) 2013 MacroHatch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

@interface AppController : NSObject {
    IBOutlet NSMenu     *statusMenu;
    
    NSStatusItem        *statusItem;
    NSImage             *statusImage;
    NSImage             *statusHighlightImage;
}

-(IBAction)screenCapture:(id)sender;

-(IBAction)windowCapture:(id)sender;

-(IBAction)regionCapture:(id)sender;

-(IBAction)about:(id)sender;

@end
