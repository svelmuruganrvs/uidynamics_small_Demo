//
//  ESSViewController.h
//  uidynamicsDemo
//
//  Created by EverestIndia on 24/09/14.
//  Copyright (c) 2014 EverestIndia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>



@interface ESSViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIView *blueBoxView;
@property (weak, nonatomic) IBOutlet UIView *redBoxView;

@property (strong, nonatomic) UIDynamicAnimator *animator;
@property (strong, nonatomic) UIAttachmentBehavior *attachment;
@property (weak, nonatomic) IBOutlet UIView *animatorView;



@end
