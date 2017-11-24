//
//  NSImage+Extension.h
//  titleBar_Demo
//
//  Created by 仝兴伟 on 2017/5/9.
//  Copyright © 2017年 仝兴伟. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface NSImage (Extension)

//保持四周一定区域像素不拉伸，将图像扩散到一定的大小
- (NSImage *)stretchableImageWithSize:(NSSize)size edgeInsets:(NSEdgeInsets)insets;
//保持leftWidth,rightWidth这左右一定区域不拉伸，将图片宽度拉伸到(leftWidth+middleWidth+rightWidth)
- (NSImage *)stretchableImageWithLeftCapWidth:(float)leftWidth middleWidth:(float)middleWidth rightCapWidth:(float)rightWidth;

+ (NSImage*) resizeImage:(NSImage*)sourceImage size:(NSSize)size;
@end
