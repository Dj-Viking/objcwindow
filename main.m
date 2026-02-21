//
//  main.m
//  
//
//  Created by Anders Ackerman on 2/14/26.
//
#import <Cocoa/Cocoa.h>
int main ()
    {
        @autoreleasepool {
            [NSApplication sharedApplication];
            [NSApp setActivationPolicy:NSApplicationActivationPolicyRegular];
            id applicationName = [[NSProcessInfo processInfo] processName];
            id window = [[NSWindow alloc] initWithContentRect:NSMakeRect(0, 0, 800, 600)
                styleMask:NSWindowStyleMaskTitled  backing:NSBackingStoreBuffered defer:NO];
            [window cascadeTopLeftFromPoint:NSMakePoint(20,20)];
            [window setTitle: applicationName];
            [window makeKeyAndOrderFront:nil];
            [NSApp activateIgnoringOtherApps:YES];
            [NSApp run];
        }
        return 0;
} 
