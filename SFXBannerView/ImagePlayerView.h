//
//  ImagePlayerView.h
//  ImagePlayerView
//
//  Created by 陈颜俊 on 14-6-5.
//  Copyright (c) 2014年 Chenyanjun. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, ICPageControlPosition) {
    ICPageControlPosition_TopLeft,
    ICPageControlPosition_TopCenter,
    ICPageControlPosition_TopRight,
    ICPageControlPosition_BottomLeft,
    ICPageControlPosition_BottomCenter,
    ICPageControlPosition_BottomRight
};

typedef void(^ImagePlayerViewTappedBlock)(NSInteger index, NSURL *imageURL);

@interface ImagePlayerView : UIView

@property (nonatomic, assign) BOOL autoScroll;  // default is YES, set NO to turn off autoScroll
@property (nonatomic, assign) NSUInteger scrollInterval;    // scroll interval, unit: second, default is 2 seconds
@property (nonatomic, assign) ICPageControlPosition pageControlPosition;    // pageControl position, defautl is bottomright
@property (nonatomic, assign) BOOL hidePageControl; // hide pageControl, default is NO
@property (nonatomic, assign) UIEdgeInsets edgeInsets;

@property (nonatomic, strong) UIPageControl *pageControl;

@property (nonatomic, strong) NSArray *images;
//@property (nonatomic, strong) NSArray *imageURLs;
@property (nonatomic, copy)   ImagePlayerViewTappedBlock imagePlayerViewTappedBlock;

/**
 *  Reload everything
 */
- (void)reloadData;

/**
 *  Stop timer before your view controller is poped
 */
- (void)stopTimer;

@end
