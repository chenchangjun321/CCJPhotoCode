//
//  ViewController.m
//  CCJPhotoBrowser
//
//  Created by NEW on 15/12/18.
//  Copyright © 2015年 CCJ. All rights reserved.
//

#import "ViewController.h"

#import "PhotoBrowserView.h"

@interface ViewController ()


@property (nonatomic,strong) PhotoBrowserView *photoBrowserView;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"11.jpg"]];
    //有待修复
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
    /*功能描述：
        1.放大缩小（缩小时背景透明），
        2.缩小时，两根手指随意全屏拖拽图片（模拟器不方便演示，真机效果不错）
        3.滚动，计数，默认显示第几张等功能
        4，集成方便，一句话搞定
     */
    
    //图片url
    NSArray *urlArray = @[@"http://down.tutu001.com/d/file/20101129/2f5ca0f1c9b6d02ea87df74fcc_560.jpg",@"http://pic.nipic.com/2007-11-09/200711912453162_2.jpg",@"http://pic25.nipic.com/20121126/8305779_171431388000_2.jpg"];
    
    //图片浏览器
    /*
        urlArray: url 数组
        CurrentIndex 默认显示第几张图片 （要小于数组长度）
        frame:大小
     */
    _photoBrowserView=[[PhotoBrowserView alloc]initWithFrame:self.view.bounds WithArray:urlArray andCurrentIndex:0];
    [self.view addSubview:_photoBrowserView];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
