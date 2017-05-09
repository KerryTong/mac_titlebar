//
//  CustomWindowController.m
//  titleBar_Demo
//
//  Created by 仝兴伟 on 2017/5/9.
//  Copyright © 2017年 仝兴伟. All rights reserved.
//

#import "CustomWindowController.h"

@interface CustomWindowController ()

@end

@implementation CustomWindowController

- (void)windowDidLoad {
     [super windowDidLoad];
     self.window.titlebarAppearsTransparent  = YES;
     self.window.movableByWindowBackground = YES;
     self.window.titleVisibility = NSWindowTitleHidden;
     [self.window setStyleMask:[self.window styleMask] | NSWindowStyleMaskFullSizeContentView];
    
}

@end
