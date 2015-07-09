//
//  ViewController.m
//  AdsBanerDemo
//
//  Created by haotian on 15/7/9.
//  Copyright (c) 2015年 haotian. All rights reserved.
//

#import "ViewController.h"
#import "ImagePlayerView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet ImagePlayerView *imagePlayerView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self imagePlayerViewInit];

}

- (void)imagePlayerViewInit
{
    self.imagePlayerView.images = @[[NSURL URLWithString:@"http://sudasuta.com/wp-content/uploads/2013/10/10143181686_375e063f2c_z.jpg"],
                       [NSURL URLWithString:@"http://www.yancheng.gov.cn/ztzl/zgycddhsdgy/xwdt/201109/W020110902584601289616.jpg"],
                       [NSURL URLWithString:@"http://fzone.oushinet.com/bbs/data/attachment/forum/201208/15/074140zsb6ko6hfhzrb40q.jpg"],[UIImage imageNamed:@"commodity"]];
    self.imagePlayerView.scrollInterval = 2.0f;
    self.imagePlayerView.pageControlPosition = ICPageControlPosition_BottomCenter;
    self.imagePlayerView.hidePageControl = NO;
    
    self.imagePlayerView.pageControl.currentPageIndicatorTintColor = [UIColor redColor];
    self.imagePlayerView.pageControl.pageIndicatorTintColor = [UIColor lightGrayColor];
    // adjust edgeInset
    //    self.imagePlayerView.edgeInsets = UIEdgeInsetsMake(10, 20, 30, 40);
    
    [self.imagePlayerView reloadData];
    
    self.imagePlayerView.imagePlayerViewTappedBlock = ^(NSInteger index, NSURL *imageURL){
        NSLog(@"you tapped index == %ld",index);
    };

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
