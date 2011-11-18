//
//  ButtonView.h
//  2DTest
//
//  Created by Pengxuan Li on 11-11-15.
//  Copyright (c) 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ButtonView : UIView
{
    float px;
    float py;
    
    CGContextRef context;
}

- (void)drawRect2:(CGRect)rect;
-(void)doit;
@property(nonatomic,assign)float px;
@property(nonatomic,assign)float py;
@end
