//
//  ViewController.m
//  2DTest
//
//  Created by Pengxuan Li on 11-11-10.
//  Copyright (c) 2011年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "QuartzCore/QuartzCore.h"
#define ANIM_GROUP		@"animationFallingRotate"
#define ANIM_ROTATE		@"animationRotate"
@implementation ViewController
@synthesize newview,background,firstview,wind1,wind2,wind1view,cloud1,cloud2,ClickView,mysecondview;
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    background=[UIImage imageNamed:@"background.jpg"];
    newview=[[[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 900, 350)] autorelease];
    [newview setImage:background];
    [self.view addSubview:newview];
    [self initbackground1];
    
    
    UIPanGestureRecognizer   *panRecongnizer=[[[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePanGesture:) ]autorelease];
    
    panRecongnizer.maximumNumberOfTouches=1;
    [self.view addGestureRecognizer:panRecongnizer];
    
    
    
    firstview=[[[FirstView alloc] initWithFrame:CGRectMake(0, 0, 480, 320)] autorelease];
    [self.view addSubview:firstview];
    [self initcontentview];
    
    [self initwind];
    [self initwind2];
    
    [self performSelector:@selector(initcloud) withObject:nil afterDelay:1.5]; 
    CAAnimation* myAnimationRotate	= [self animationRotate];
    
    [wind1view.layer addAnimation:myAnimationRotate forKey:ANIM_ROTATE];

    
    [self getRightView2];
    }
-(void)initcloud{

    cloud1=[UIImage imageNamed:@"cloud1.png"];
    UIImageView *cloud1view=[[[UIImageView alloc] initWithFrame:CGRectMake(530, 100, 70, 30)] autorelease];
    [cloud1view setImage:cloud1];
    [self.view addSubview:cloud1view];
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:2.5]; 
    [UIView setAnimationRepeatCount:3];
    [UIView setAnimationCurve:UIViewAnimationCurveLinear];
    [cloud1view setFrame:CGRectMake(-100, 100, 50, 20)];
    [UIView commitAnimations];  
    
    cloud2=[UIImage imageNamed:@"cloud1.png"];
    UIImageView *cloud2view=[[[UIImageView alloc] initWithFrame:CGRectMake(480, 170, 70, 30)] autorelease];
    [cloud2view setImage:cloud2];
    [self.view addSubview:cloud2view];
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:3]; 
    [UIView setAnimationRepeatCount:4];
    [UIView setAnimationCurve:UIViewAnimationCurveLinear];
    [cloud2view setFrame:CGRectMake(-100, 170, 70, 30)];
    [UIView commitAnimations];  

    
    UIImage *cloud3=[UIImage imageNamed:@"cloud1.png"];
    UIImageView *cloud3view=[[[UIImageView alloc] initWithFrame:CGRectMake(530, 280, 70, 30)] autorelease];
    [cloud3view setImage:cloud3];
    [self.view addSubview:cloud3view];
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:2.7]; 
    [UIView setAnimationRepeatCount:3];
    [UIView setAnimationCurve:UIViewAnimationCurveLinear];
    [cloud3view setFrame:CGRectMake(-100, 280, 70, 30)];
    [UIView commitAnimations];  
    
    UIImage *cloud4=[UIImage imageNamed:@"cloud1.png"];
    UIImageView *cloud4view=[[[UIImageView alloc] initWithFrame:CGRectMake(410, 40, 70, 30)] autorelease];
    [cloud4view setImage:cloud4];
    [self.view addSubview:cloud4view];
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:4]; 
    [UIView setAnimationRepeatCount:4];
    [UIView setAnimationCurve:UIViewAnimationCurveLinear];
    [cloud4view setFrame:CGRectMake(-100, 40, 70, 30)];
    [UIView commitAnimations];  
    
    UIImage *cloud5=[UIImage imageNamed:@"cloud1.png"];
    UIImageView *cloud5view=[[[UIImageView alloc] initWithFrame:CGRectMake(480, 130, 70, 30)] autorelease];
    [cloud5view setImage:cloud5];
    [self.view addSubview:cloud5view];
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:4]; 
    [UIView setAnimationRepeatCount:4];
    [UIView setAnimationCurve:UIViewAnimationCurveLinear];
    [cloud5view setFrame:CGRectMake(-100, 130, 70, 30)];
    [UIView commitAnimations];  

}
-(void)initwind{
    wind1=[UIImage imageNamed:@"1.png"];
    wind1view=[[[UIImageView alloc] initWithFrame:CGRectMake(320, 320, 100, 100)] autorelease];
    
    [wind1view setImage:wind1];
    [self.view addSubview:wind1view];
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.9]; 
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    [wind1view setFrame:CGRectMake(318, 130, 100, 100)];
    
    [UIView commitAnimations];  

//    [UIView beginAnimations:nil context:nil];
//    [UIView setAnimationDuration:1]; 
//    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
//    [wind1view setFrame:CGRectMake(320, 120, 100, 100)];
//    [UIView commitAnimations];  
//    CAAnimation* myAnimationRotate	= [self animationRotate];
//    [wind1view.layer addAnimation:myAnimationRotate forKey:ANIM_ROTATE];
       

}
-(void)initwind2{
    wind2=[UIImage imageNamed:@"2.png"];
    UIImageView *wind2view=[[[UIImageView alloc] initWithFrame:CGRectMake(360, 320, 10, 170)] autorelease];
    [wind2view setImage:wind2];
    [self.view addSubview:wind2view];
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1]; 
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    [wind2view setFrame:CGRectMake(365, 180, 10, 170)];
    [UIView commitAnimations];  
    

}
- (CAAnimation *)animationRotate
{
	// rotate animation
	CATransform3D rotationTransform  = CATransform3DMakeRotation(M_PI, 0.0, 0, 1.0);
	
    CABasicAnimation* animation;
    animation = [CABasicAnimation animationWithKeyPath:@"transform"];
    animation.timingFunction=[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    animation.speed=1.5;
	animation.toValue		= [NSValue valueWithCATransform3D:rotationTransform];
    animation.duration		= 0.5;
	animation.autoreverses	= NO;
    animation.cumulative	= YES;
    animation.repeatCount	= FLT_MAX;  //"forever"
	//设置动画代理
	animation.delegate		= self;
    
	return animation;
}

-(void)handlePanGesture:(UIPanGestureRecognizer *)panRcognizer{
    if (panRcognizer.state==UIGestureRecognizerStateBegan) {
		//touchBeginPoint=[panRecognizer locationInView:self.view];
		//NSLog(@"touch began");
//		disablePan=NO;
	}
	if (panRcognizer.state==UIGestureRecognizerStateChanged && !disablePan) {
//        disablePan=YES;
        CGPoint p=[panRcognizer translationInView:self.view];
        
		if (p.x*p.x>p.y*p.y) {//左右
			if (p.x<0) {
				NSLog(@"%f",firstview.frame.origin.x);
                firstview.frame=CGRectMake(p.x, 0, 480, 320);
                //                [self getRightView];
                
			}else {
				
                NSLog(@"%f",firstview.frame.origin.x);
                firstview.frame=CGRectMake(p.x, 0, 480, 320);
                //                [self getLeftView];
                
			}
		}else {//上下
			if (p.y<0) {
				NSLog(@"up");
                [self getDownView];
			}else {
				NSLog(@"down");
                [self getUpView];
			}
		}
}
    
    
    
        
    
    if (panRcognizer.state==UIGestureRecognizerStateEnded) {
        
        
        NSLog(@"end");

        if (firstview.frame.origin.x<-140) {
            NSLog(@"the right view move in");
            [self getRightView];
            firstview.frame=CGRectMake(0, 0, 480, 320);
            
        }else{
            
        if (firstview.frame.origin.x<0) {
            NSLog(@"backfrom left");
            [UIView beginAnimations:nil context:nil];
            [UIView setAnimationDuration:0.2]; 
            [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
            [firstview setFrame:CGRectMake(0, 0, 480, 320)];
            [UIView commitAnimations];  
        }else{
            
           
            if (firstview.frame.origin.x>200) {
                NSLog(@"the left view move in");
                [self getLeftView];
                firstview.frame=CGRectMake(0, 0, 480, 320);
            }else
                
               
        {             
            if (firstview.frame.origin.x>0) {
                NSLog(@"backfrom right");
                [UIView beginAnimations:nil context:nil];
                [UIView setAnimationDuration:0.2]; 
                [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
                [firstview setFrame:CGRectMake(0, 0, 480, 320)];
                [UIView commitAnimations];  
            }
        }
        }
        }
    }
}
-(void)getRightView{

    CATransition *transition=[CATransition animation];
    transition.duration=0.2;
    transition.timingFunction=[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    transition.type=kCATransitionPush;
    transition.subtype=kCATransitionFromRight;
    transition.delegate=self;
    [firstview.layer addAnimation:transition forKey:nil];
            
}
-(void)getRightView2{
    
    CATransition *transition=[CATransition animation];
    transition.duration=1;
    transition.timingFunction=[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    transition.type=kCATransitionPush;
    transition.subtype=kCATransitionFromRight;
    transition.delegate=self;
    [firstview.layer addAnimation:transition forKey:nil];
    
}

-(void)getLeftView{
    CATransition *transition=[CATransition animation];
    transition.duration=0.2;
    transition.timingFunction=[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    transition.type=kCATransitionPush;
    transition.subtype=kCATransitionFromLeft;
    transition.delegate=self;
    [firstview.layer addAnimation:transition forKey:nil];

}
-(void)getUpView{
    CATransition *transition=[CATransition animation];
    transition.duration=0.7;
    transition.timingFunction=[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    transition.type=@"cube";
    transition.subtype=kCATransitionFromBottom;
    transition.delegate=self;
    [firstview.layer addAnimation:transition forKey:nil];
}
-(void)getDownView{
    CATransition *transition=[CATransition animation];
    transition.duration=0.7;
    transition.timingFunction=[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    transition.type=@"cube";
    transition.subtype=kCATransitionFromTop;
    transition.delegate=self;
    [firstview.layer addAnimation:transition forKey:nil];

}
-(void)initbackground1{

    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:40]; 
    [UIView setAnimationCurve:UIViewAnimationCurveLinear];
    [UIView setAnimationRepeatAutoreverses:YES];
    [UIView setAnimationRepeatCount:100];
    [newview setFrame:CGRectMake(-420, 0, 900, 350)];
    [UIView commitAnimations];  
 
}
-(void)initcontentview{
    UIImage *pic1=[UIImage imageNamed:@"item1.png"];
    UIImage *pic2=[UIImage imageNamed:@"item2.png"];
    UIImage *pic3=[UIImage imageNamed:@"item3.png"];
    UIImage *pic4=[UIImage imageNamed:@"item4.png"];
    UIButton *item1=[[[UIButton alloc] initWithFrame:CGRectMake(30, 20, 100, 100)] autorelease];
    [item1.layer setBorderWidth:2.0];
    [item1.layer setBorderColor:[UIColor whiteColor].CGColor];
    [item1.layer setCornerRadius:15.0];
    [item1.layer setMasksToBounds:YES];
    [item1 setImage: pic1 forState:UIControlStateNormal];
    [item1 addTarget:self action:@selector(ClickHandle:) forControlEvents:UIControlEventTouchUpInside];
    item1.tag=1;
    [firstview addSubview:item1];
    
 
    
    
    UIButton *item2=[[[UIButton alloc] initWithFrame:CGRectMake(30, 140, 100, 100)] autorelease];
    [item2.layer setBorderWidth:2.0];
    [item2.layer setBorderColor:[UIColor whiteColor].CGColor];
    [item2.layer setCornerRadius:15.0];
    [item2.layer setMasksToBounds:YES];
    [item2 setImage: pic2 forState:UIControlStateNormal];
    [item2 addTarget:self action:@selector(ClickHandle:) forControlEvents:UIControlEventTouchUpInside];
     item2.tag=2;
    [firstview addSubview:item2];
    
    
    
    UIButton *item3=[[[UIButton alloc] initWithFrame:CGRectMake(150, 20, 100, 100)] autorelease];
    
    [item3.layer setBorderWidth:2.0];
    [item3.layer setBorderColor:[UIColor whiteColor].CGColor];
    [item3.layer setCornerRadius:15.0];
    [item3.layer setMasksToBounds:YES];
    [item3 setImage: pic3 forState:UIControlStateNormal];
    [item3 addTarget:self action:@selector(ClickHandle:) forControlEvents:UIControlEventTouchUpInside];
     item3.tag=3;
    [firstview addSubview:item3];
    
    
    
    UIButton *item4=[[[UIButton alloc] initWithFrame:CGRectMake(150, 140, 100, 100)] autorelease];
    
    [item4.layer setBorderWidth:2.0];
    [item4.layer setBorderColor:[UIColor whiteColor].CGColor];
    [item4.layer setCornerRadius:15.0];
    [item4.layer setMasksToBounds:YES];
    [item4 setImage: pic4 forState:UIControlStateNormal];
    [item4 addTarget:self action:@selector(ClickHandle:) forControlEvents:UIControlEventTouchUpInside];
     item4.tag=4;
    [firstview addSubview:item4];

//    colorView = [[UIView alloc] initWithFrame:CGRectMake(260, 50, 100, 100)];
//    [colorView setBackgroundColor:[UIColor orangeColor]];
//    [firstview addSubview:colorView];
//    [colorView release];
}



- (void)ClickHandle:(id)sender{
    UIButton *button=(UIButton *)sender;
    NSLog(@"------------%d",button.tag);
    if (button.tag==1) {
        ClickView=[[[ButtonView alloc] initWithFrame:CGRectMake(0, 0, 480, 320)] autorelease];
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:1]; 
        [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
        [UIView setAnimationDelegate:self];
        [UIView setAnimationTransition:UIViewAnimationOptionTransitionFlipFromTop forView:self.view cache:YES];
        [self.view addSubview:ClickView];
        [UIView commitAnimations];  
        //[firstview viewwithtag:]寻找按钮
    }
    if (button.tag==2) {
        mysecondview=[[[SecondView alloc] initWithFrame:CGRectMake(0, 0, 480, 320)] autorelease];
        [self.view addSubview:mysecondview];
           }

//    
//    [UIView beginAnimations:nil context:nil];
//    [UIView setAnimationDuration:1]; 
//    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
//    [UIView setAnimationDelegate:self];
//    [UIView setAnimationTransition:UIViewAnimationOptionTransitionFlipFromTop forView:colorView cache:YES];
////    [button exchangeSubviewAtIndex:0 withSubviewAtIndex:0];
////    [button setAlpha:0.5];
//        [UIView commitAnimations];  
    //[firstview viewwithtag:]寻找按钮
    
    
}
- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft)||(interfaceOrientation==UIInterfaceOrientationLandscapeRight);
}
@end
