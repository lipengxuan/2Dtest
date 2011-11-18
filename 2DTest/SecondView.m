//
//  SecondView.m
//  2DTest
//
//  Created by Pengxuan Li on 11-11-11.
//  Copyright (c) 2011年 __MyCompanyName__. All rights reserved.
//

#import "SecondView.h"
#import "QuartzCore/QuartzCore.h"
@implementation SecondView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.backgroundColor=[UIColor whiteColor];
        
        UIView *newview=[[UIView alloc] initWithFrame:CGRectMake(200, 100, 100, 100)];
        newview.backgroundColor=[UIColor redColor];
        newview.bounds=CGRectMake(100000, 78787878, 50, 50);
        
        [self addSubview:newview];
        UITapGestureRecognizer   *TapRecongnizer=[[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTapGesture:) ]autorelease];
        [newview addGestureRecognizer:TapRecongnizer];
        
        
               
        [UIView animateWithDuration:3 animations:^{
            newview.alpha=0;
            newview.bounds=CGRectMake(1, 1, 150, 150);
            
            newview.frame=CGRectMake(300, 200, 150, 150);
            [UIView commitAnimations];  

        }
            completion:^(BOOL finished){
                NSLog(@"second animation use!");
                [UIView animateWithDuration:3 animations:^{
                    newview.alpha=1;
                    newview.frame=CGRectMake(100, 100, 200, 200);
                    newview.backgroundColor=[UIColor blueColor];
                }];
                               
            }                         
         ];
       
        
        
        
        
           }
    return self;
}
-(void)handleTapGesture:(UITapGestureRecognizer *)Recongnizer{
    NSLog(@"Tap !");


}

- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 2.0);
    CGContextBeginPath(context);
    CGContextMoveToPoint(context, 50, 100);
//    CGContextAddLineToPoint(context, 350, 50);
    CGContextAddCurveToPoint(context, 80, 30, 140, 140, 200, 50);
    CGContextClosePath(context);
    CGContextStrokePath(context);

}


@end
