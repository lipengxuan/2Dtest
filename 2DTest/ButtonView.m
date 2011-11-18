//
//  ButtonView.m
//  2DTest
//
//  Created by Pengxuan Li on 11-11-15.
//  Copyright (c) 2011年 __MyCompanyName__. All rights reserved.
//

#import "ButtonView.h"

@implementation ButtonView
@synthesize px,py;
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        UITapGestureRecognizer   *TapRecongnizer=[[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTapGesture:) ]autorelease];
        self.backgroundColor=[UIColor whiteColor];
        self.alpha=0.6;
        //self.backgroundColor =[UIColor clearColor];
        [self addGestureRecognizer:TapRecongnizer];
        UIPanGestureRecognizer   *panRecongnizer1=[[[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePanGesture:) ]autorelease];
        
        panRecongnizer1.maximumNumberOfTouches=1;
        [self addGestureRecognizer:panRecongnizer1];

        
    }
    return self;
}
-(void)handlePanGesture:(UIPanGestureRecognizer *)panRcognizer1{
	if (panRcognizer1.state==UIGestureRecognizerStateChanged) {
        [self doit];
       CGPoint p=[panRcognizer1 locationInView:self];
        px=p.x;
        py=p.y;
       NSLog(@"the point's x is %f the y is%f",px,py);
        [self drawRect2:CGRectMake(0, 0, 480, 320)];
    
    }
     if (panRcognizer1.state==UIGestureRecognizerStateEnded) {
        
        
        NSLog(@"end");
     }            
}
-(void)handleTapGesture:(UITapGestureRecognizer *)panRcognizer{
    NSLog(@"TAP");
    
//    CGPoint p=[panRcognizer locationInView:self];
//    px=p.x;
//    py=p.y;
//    NSLog(@"the point's x is %f the y is%f",px,py);
//    [self drawRect2:CGRectMake(0, 0, 480, 320)];
//    [self performSelector:@selector(doit) withObject:self afterDelay:1];
}
-(void)doit{
    [self setNeedsDisplay];
}
-(void)drawRect2:(CGRect)rect{
       
    
        CGContextSetLineWidth(context, 2.0);
        CGContextBeginPath(context);
        CGContextMoveToPoint(context, 0, (320-py));
        CGContextAddLineToPoint(context,480, (320-py));
        CGContextStrokePath(context);
    

    
        CGContextSetLineWidth(context, 2.0);
        CGContextBeginPath(context);
        CGContextMoveToPoint(context, px, py);
        CGContextAddLineToPoint(context,px, 0);//往上发射
        CGContextStrokePath(context);
    
        CGContextSetLineWidth(context, 2.0);
        CGContextBeginPath(context);
        CGContextMoveToPoint(context, px, py);
        CGContextAddLineToPoint(context,px, 320);//往下发射
        CGContextStrokePath(context);
        NSLog(@"draw");
//    CGContextSetLineWidth(context, 5.0);
//    CGContextBeginPath(context);
//    CGContextMoveToPoint(context, 100, 0);
//    CGContextAddLineToPoint(context, 100, 270);
//    CGContextStrokePath(context);
//    
//    
//    CGContextSetLineWidth(context, 5.0);
//    CGContextBeginPath(context);
//    CGContextMoveToPoint(context, 200, 270);
//    CGContextAddLineToPoint(context, 480, 270);
//    CGContextStrokePath(context);

  //  [self.layer setNeedsLayout];
//    [self layoutIfNeeded];
  //  [self setNeedsDisplay];
}
- (void)drawRect:(CGRect)rect {
    NSLog(@">>>>>>>>");
       context = UIGraphicsGetCurrentContext();
        CGContextSetLineWidth(context, 5.0);
        CGContextBeginPath(context);
        CGContextMoveToPoint(context, 50, 0);
        CGContextAddLineToPoint(context, 50, 270);
        CGContextStrokePath(context);
    
    
        CGContextSetLineWidth(context, 5.0);
        CGContextBeginPath(context);
        CGContextMoveToPoint(context, 50, 270);
        CGContextAddLineToPoint(context, 480, 270);
        CGContextStrokePath(context);
    
    
    CGContextSetLineWidth(context, 5.0);
    CGContextBeginPath(context);
    CGContextMoveToPoint(context, 50, 270);
    CGContextAddLineToPoint(context, 100, 100);
    CGContextAddLineToPoint(context, 160, 160);
    CGContextAddLineToPoint(context, 180, 60);
    CGContextAddLineToPoint(context, 260, 60);
    CGContextAddLineToPoint(context, 270, 190);
    CGContextAddLineToPoint(context, 300, 70);
    CGContextAddLineToPoint(context, 350, 250);
    CGContextStrokePath(context);



}



@end
