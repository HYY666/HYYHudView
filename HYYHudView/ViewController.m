//
//  ViewController.m
//  HYYHudView
//
//  Created by Apple on 2018/8/22.
//  Copyright © 2018年 hyy. All rights reserved.
//

#import "ViewController.h"
#import "HYYHudView.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(100, 100, 200, 100);
    button.backgroundColor = [UIColor cyanColor];
    [button setTitle:@"点我弹框" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}



- (void)buttonClicked{
//    inView nil在window上弹框
    [HYYHudView showMsg:@"您的token已过期，请重新登录" inView:nil];
    
    
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
