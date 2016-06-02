//
//  ViewController.m
//  Quartz2DDemo
//
//  Created by 刘健 on 16/6/2.
//  Copyright © 2016年 刘健. All rights reserved.
//


/*
 图形上下文CGContextRef代表图形输出设备（也就是绘制的位置），包含了绘制图形的一些设备信息，Quartz 2D中的所有对象最终都必须绘制到图形上下文。这样一来，我们在绘制图形时就不必关心具体的设备信息，统一了代码编写方式（在Quartz 2D中的绘图上下文可以是位图Bitmap、PDF、窗口Window、层Layer、打印对象Printer）。
 */


#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"BasicGraphView_1";
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationController.navigationBar.translucent = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
