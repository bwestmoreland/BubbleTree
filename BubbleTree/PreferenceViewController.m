//
//  PreferenceViewController.m
//  BubbleTree
//
//  Created by Brent Westmoreland on 4/14/13.
//  Copyright (c) 2013 Brent Westmoreland. All rights reserved.
//

#import "PreferenceViewController.h"

@implementation PreferenceViewController

- (IBAction)didntLikeIt:(UIButton *)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)likedIt:(UIButton *)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
