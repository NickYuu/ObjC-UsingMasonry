//
//  ViewController.m
//  17-使用Masonry框架AutoLaout
//
//  Created by 游宗翰 on 2016/9/16.
//  Copyright © 2016年 han. All rights reserved.
//

#import "ViewController.h"
#import <Masonry.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *redView = [[UIView alloc] init];
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:redView];
    
    UIView *blueView = [[UIView alloc] init];
    blueView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:blueView];
    
    [redView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.view.mas_left).multipliedBy(1).offset(30);
        make.right.mas_equalTo(blueView.mas_left).offset(-30);
        make.bottom.mas_equalTo(self.view.mas_bottom).offset(-30);
        make.width.mas_equalTo(blueView.mas_width);
        make.height.mas_equalTo(50);
    }];
    
    [blueView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self.view.mas_right).offset(-30);
        make.height.mas_equalTo(redView.mas_height);
        make.bottom.mas_equalTo(redView.mas_bottom);
    }];
    
    [redView mas_updateConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(70);
    }];
    
    
    
}


@end
