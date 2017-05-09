//
//  ViewController.m
//  titleBar_Demo
//
//  Created by 仝兴伟 on 2017/5/9.
//  Copyright © 2017年 仝兴伟. All rights reserved.
//

#import "ViewController.h"
#import "CustomView.h"
@interface ViewController ()
@property (weak) IBOutlet CustomView *fakeTitlebar;
@end
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    
    self.fakeTitlebar.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.fakeTitlebar.topAnchor constraintEqualToAnchor:self.view.topAnchor].active = YES;
    
    [self.fakeTitlebar.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor].active = YES;
    
    [self.fakeTitlebar.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor].active = YES;
    
    [self.fakeTitlebar.heightAnchor constraintEqualToConstant:60].active = YES;
    
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
