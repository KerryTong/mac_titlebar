//
//  HomeVC.m
//  1234
//
//  Created by 仝兴伟 on 2017/11/24.
//  Copyright © 2017年 仝兴伟. All rights reserved.
//

#import "HomeVC.h"
#import "CustomView.h"
@interface HomeVC ()
@property (weak) IBOutlet CustomView *TitleBar;

@end

@implementation HomeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    [self addTop];
}

- (void)addTop{
    self.TitleBar.translatesAutoresizingMaskIntoConstraints = NO;
    // 左
    [self.TitleBar.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor].active = YES;
    // 上
    [self.TitleBar.topAnchor constraintEqualToAnchor:self.view.topAnchor].active = YES;
    // 右
    [self.TitleBar.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor].active = YES;
    // 高度
    [self.TitleBar.heightAnchor constraintEqualToConstant:60].active = YES;
}

@end
