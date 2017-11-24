//
//  LoginVC.m
//  1234
//
//  Created by 仝兴伟 on 2017/11/24.
//  Copyright © 2017年 仝兴伟. All rights reserved.
//

#import "LoginVC.h"
#import "LoginView.h"
@interface LoginVC ()
@property (weak) IBOutlet LoginView *loginView;

@end

@implementation LoginVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    [self addLayout];
}

- (void)addLayout{
    self.loginView.translatesAutoresizingMaskIntoConstraints = NO;
    // 左
    [self.loginView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor].active = YES;
    // 上
    [self.loginView.topAnchor constraintEqualToAnchor:self.view.topAnchor].active = YES;
    // 右
    [self.loginView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor].active = YES;
    // 高度
    [self.loginView.heightAnchor constraintEqualToConstant:600].active = YES;

}

@end
