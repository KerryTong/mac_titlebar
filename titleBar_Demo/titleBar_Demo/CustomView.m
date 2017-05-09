//
//  CustomView.m
//  titleBar_Demo
//
//  Created by 仝兴伟 on 2017/5/9.
//  Copyright © 2017年 仝兴伟. All rights reserved.
//

#import "CustomView.h"
#import "NSImage+Extension.h"
@implementation CustomView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
    self.wantsLayer = YES;
    NSImage *image = [NSImage imageNamed:@"1111"];
    NSImage *image1 = [image stretchableImageWithLeftCapWidth:300 middleWidth:dirtyRect.size.width rightCapWidth:25];
    [ [NSColor colorWithPatternImage:image1] set];
    NSRectFill(dirtyRect);
}

@end
