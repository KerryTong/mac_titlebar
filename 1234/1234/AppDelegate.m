//
//  AppDelegate.m
//  1234
//
//  Created by 仝兴伟 on 2017/11/24.
//  Copyright © 2017年 仝兴伟. All rights reserved.
//

#import "AppDelegate.h"
#import "HomeVC.h"
#import "LoginVC.h"
#define ISLOGIN @"isLogin"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@property (nonatomic, strong) HomeVC *homeVC;
@property (nonatomic, strong) LoginVC *loginVC;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if (![[defaults valueForKey:ISLOGIN] intValue]){
        [self addLogin];
    } else {
        [self addHome];
    }
}

#pragma  mark -- 点击方法

- (void) addLogin {
    self.loginVC = [[LoginVC alloc]initWithNibName:@"LoginVC" bundle:nil];
    NSWindow *myWindow = [NSWindow windowWithContentViewController:self.loginVC];
    self.mainWindowController = [[NSWindowController alloc]initWithWindow:myWindow];
    self.mainWindowController.window.titlebarAppearsTransparent  = YES;
    self.mainWindowController.window.movableByWindowBackground = YES;
    self.mainWindowController.window.titleVisibility = NSWindowTitleHidden;
    [self.mainWindowController.window setStyleMask:[self.mainWindowController.window styleMask] | NSWindowStyleMaskFullSizeContentView];
    self.loginVC.view.window.windowController = self.mainWindowController;
    [self.mainWindowController.window makeKeyAndOrderFront:self];
    [self.mainWindowController.window center];
    [self.mainWindowController showWindow:nil];
}

- (void) addHome{
    self.homeVC = [[HomeVC alloc]initWithNibName:@"HomeVC" bundle:nil];
    NSWindow *myWindow = [NSWindow windowWithContentViewController:self.homeVC];
    self.mainWindowController = [[NSWindowController alloc]initWithWindow:myWindow];
    self.mainWindowController.window.titlebarAppearsTransparent  = YES;
    self.mainWindowController.window.movableByWindowBackground = YES;
    self.mainWindowController.window.titleVisibility = NSWindowTitleHidden;
    [self.mainWindowController.window setStyleMask:[self.mainWindowController.window styleMask] | NSWindowStyleMaskFullSizeContentView];
    self.homeVC.view.window.windowController = self.mainWindowController;
    [self.mainWindowController.window makeKeyAndOrderFront:self];
    [self.mainWindowController.window center];
    [self.mainWindowController showWindow:nil];
}


- (void)addWindow {
    [self.window close];
    [self.window setBackgroundColor:[NSColor colorWithPatternImage:[NSImage imageNamed:@"bg"]]];
    self.window.titlebarAppearsTransparent  = YES;
    self.window.movableByWindowBackground = YES;
    self.window.titleVisibility = NSWindowTitleHidden;
    [self.window setStyleMask:[self.window styleMask] | NSWindowStyleMaskFullSizeContentView];
}
- (BOOL)applicationShouldHandleReopen:(NSApplication *)sender hasVisibleWindows:(BOOL)flag
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([[defaults valueForKey:ISLOGIN] intValue]){
        [self addLogin];
    } else {
        [self addHome];
    }
    return YES;
}


@end
