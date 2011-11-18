//
//  ViewController.h
//  2DTest
//
//  Created by Pengxuan Li on 11-11-10.
//  Copyright (c) 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FirstView.h"
#import <QuartzCore/QuartzCore.h>
#import "ButtonView.h"
#import "SecondView.h"
@interface ViewController : UIViewController
{
    UIImageView *newview;
    UIImageView *wind1view;
    UIImage *background;
    UIImage *wind1;
    UIImage *wind2;
    UIImage *cloud1;
    UIImage *cloud2;
    BOOL backgroundDone;
    BOOL *disablePan;
    FirstView *firstview;
    UIView *colorView;
    CAAnimationGroup* m_pGroupAnimation;
    ButtonView *ClickView;
    SecondView *mysecondview;
}
-(void)initcontentview;
-(void)initbackground1;
-(void)getRightView;
-(void)getRightView2;
-(void)getLeftView;
-(void)getUpView;
-(void)getDownView;
-(void)initwind;
-(void)initwind2;
-(void)initcloud;
- (CAAnimation *)animationRotate;
@property(nonatomic,retain)UIImageView *newview;
@property(nonatomic,retain)UIImageView *wind1view;
@property(nonatomic,retain)ButtonView *ClickView;
@property(nonatomic,retain)SecondView *mysecondview;
@property(nonatomic,retain)UIImage *background;
@property(nonatomic,retain)UIImage *wind1;
@property(nonatomic,retain)UIImage *wind2;
@property(nonatomic,retain)UIImage *cloud1;
@property(nonatomic,retain)UIImage *cloud2;
@property(nonatomic,retain)FirstView *firstview;
@end
