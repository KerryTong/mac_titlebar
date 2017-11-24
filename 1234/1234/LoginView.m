//
//  LoginView.m
//  1234
//
//  Created by 仝兴伟 on 2017/11/24.
//  Copyright © 2017年 仝兴伟. All rights reserved.
//

#import "LoginView.h"
#import "NSImage+Extension.h"

@implementation LoginView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
    self.wantsLayer = YES;
    NSImage *image = [NSImage imageNamed:@"bg"];
    NSImage *image1 = [image stretchableImageWithLeftCapWidth:1 middleWidth:dirtyRect.size.width rightCapWidth:1];
    [ [NSColor colorWithPatternImage:image1] set];
    NSRectFill(dirtyRect);
}

@end
