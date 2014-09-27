//
//  ESSViewController.m
//  uidynamicsDemo
//
//  Created by EverestIndia on 24/09/14.
//  Copyright (c) 2014 EverestIndia. All rights reserved.
//

#import "ESSViewController.h"

@interface ESSViewController ()

@end

@implementation ESSViewController
{
    CGPoint _currentLocation;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    CGRect frameRect = CGRectMake(10, 20, 80, 80);
    
//    _blueBoxView = [[UIView alloc] initWithFrame:frameRect];
//    _blueBoxView.backgroundColor = [UIColor blueColor];
    
    frameRect = CGRectMake(150, 20, 60, 60);
    
//    _redBoxView = [[UIView alloc] initWithFrame:frameRect];
//    _redBoxView.backgroundColor = [UIColor redColor];
    
//    [self.view addSubview:_blueBoxView];
//    [self.view addSubview:_redBoxView];
    
    _animator = [[UIDynamicAnimator alloc]
                 initWithReferenceView:self.view];
    
    UIGravityBehavior *gravity =
	[[UIGravityBehavior alloc]
     initWithItems:@[_blueBoxView, _redBoxView]];
    CGVector vector = CGVectorMake(0.0, 1.0);
    
    [gravity setGravityDirection:vector];
    
    UICollisionBehavior *collision = [[UICollisionBehavior alloc]
                                      initWithItems:@[_blueBoxView, _redBoxView]];
    collision.translatesReferenceBoundsIntoBoundary = YES;
    
    UIDynamicItemBehavior *behavior =
	[[UIDynamicItemBehavior alloc] initWithItems:@[_blueBoxView]];
    behavior.elasticity = 0.5;


    
    UIAttachmentBehavior *boxattachment = [[UIAttachmentBehavior alloc]
                                           initWithItem:_blueBoxView attachedToItem:_redBoxView];
    [boxattachment setFrequency:4.0];
    [boxattachment setDamping:0.0];

    
    [_animator addBehavior:boxattachment];
    [_animator addBehavior:behavior];
    [_animator addBehavior:collision];
    [_animator addBehavior:gravity];
	// Do any additional setup after loading the view, typically from a nib.
}
//- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
//{
//    UITouch *theTouch = [touches anyObject];
//    
//    _currentLocation = [theTouch locationInView:self.view];
//    
//    UIOffset offset = UIOffsetMake(20, 20);
//    
//    _attachment = [[UIAttachmentBehavior alloc]
//                   initWithItem:_blueBoxView
//                   offsetFromCenter:offset
//                   attachedToAnchor:_currentLocation];
//    
//    [_animator addBehavior:_attachment];
//}
//
//- (void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
//{
//    UITouch *theTouch = [touches anyObject];
//    _currentLocation = [theTouch locationInView:self.view];
//    _attachment.anchorPoint = _currentLocation;
//}

//- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
//{
//    [_animator removeBehavior:_attachment];
//}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
