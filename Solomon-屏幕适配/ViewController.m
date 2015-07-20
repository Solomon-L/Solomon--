//
//  ViewController.m
//  Solomon-屏幕适配
//
//  Created by MS on 15-7-18.
//  Copyright (c) 2015年 Solomon. All rights reserved.
//

#import "ViewController.h"
#define SPACING 20

@interface ViewController ()
{
    UIView *_topView;
    UIView *_leftView;
    UIView *_rightView;
    UIView *_leftbuttomView;
    UIView *_rightbuttomView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // backgroud
    self.view.backgroundColor = [UIColor grayColor];
    
    // topView
    CGFloat topViewX = SPACING;
    CGFloat topViewY = SPACING;
    CGFloat topViewW = self.view.bounds.size.width - SPACING*2;
    CGFloat topViewH = 40;
    _topView = [[UIView alloc] init];
    [self.view addSubview:_topView];
    _topView.frame = CGRectMake(topViewX, topViewY, topViewW, topViewH);
    _topView.backgroundColor = [UIColor redColor];
    _topView.autoresizingMask = UIViewAutoresizingFlexibleWidth;

    // leftbuttomView
    CGFloat leftbuttomViewX = 0;
    CGFloat leftbuttomViewY = topViewH + SPACING;
    CGFloat leftbuttomViewW = self.view.bounds.size.width / 2;
    CGFloat leftbuttomViewH = self.view.bounds.size.height - _topView.bounds.size.height - SPACING;
    _leftbuttomView = [[UIView alloc] init];
    [self.view addSubview:_leftbuttomView];
    _leftbuttomView.frame = CGRectMake(leftbuttomViewX, leftbuttomViewY, leftbuttomViewW, leftbuttomViewH);
    _leftbuttomView.backgroundColor = [UIColor clearColor];
    _leftbuttomView.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleRightMargin;
    
    // rightbuttomView
    CGFloat rightbuttomViewX = self.view.bounds.size.width/2;
    CGFloat rightbuttomViewY = topViewH + SPACING;
    CGFloat rightbuttomViewW = self.view.bounds.size.width/2;
    CGFloat rightbuttomViewH = self.view.bounds.size.height-_topView.bounds.size.height - SPACING;
    _rightbuttomView = [[UIView alloc] init];
    [self.view addSubview:_rightbuttomView];
    _rightbuttomView.frame = CGRectMake(rightbuttomViewX, rightbuttomViewY, rightbuttomViewW, rightbuttomViewH);
    _rightbuttomView.backgroundColor = [UIColor clearColor];
    _rightbuttomView.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleLeftMargin;

    // leftView
    CGFloat leftViewX = SPACING;
    CGFloat leftViewY = SPACING;
    CGFloat leftViewW = _leftbuttomView.bounds.size.width - SPACING - SPACING / 2;
    CGFloat leftViewH = _leftbuttomView.bounds.size.height - SPACING * 2;
    _leftView = [[UIView alloc] init];
    [_leftbuttomView addSubview:_leftView];
    _leftView.frame = CGRectMake(leftViewX, leftViewY, leftViewW, leftViewH);
    _leftView.backgroundColor = [UIColor blueColor];
    _leftView.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;

    // rightView
    CGFloat rightViewX = SPACING / 2;
    CGFloat rightViewY = SPACING;
    CGFloat rightViewW = _rightbuttomView.bounds.size.width - SPACING - SPACING / 2;
    CGFloat rightViewH = _rightbuttomView.bounds.size.height - SPACING * 2;
    _rightView = [[UIView alloc] init];
    [_rightbuttomView addSubview:_rightView];
    _rightView.frame = CGRectMake(rightViewX, rightViewY, rightViewW, rightViewH);
    _rightView.backgroundColor = [UIColor blueColor];
    _rightView.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
    
    // bar-Button
    UIBarButtonItem *barBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(barBtnClicked)];
    self.navigationItem.rightBarButtonItem = barBtn;
    
    
}
- (void)barBtnClicked
{
    UIDevice *device = [UIDevice currentDevice];//获取当前的设备
//    NSLog(@"设备方向:%d     leftView:%@",(int)device.orientation,NSStringFromCGRect(_leftView.frame));
//    NSLog(@"设备方向:%d     View:%f",(int)device.orientation,self.view.bounds.size.width);
     NSLog(@"设备方向:%d     View:%@",(int)device.orientation,NSStringFromCGRect(_leftView.frame));
     NSLog(@"设备方向:%d     View:%@",(int)device.orientation,NSStringFromCGRect(_rightView.frame));
}

@end
