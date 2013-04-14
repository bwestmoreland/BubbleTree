//
//  MainViewController.m
//  BubbleTree
//
//  Created by Brent Westmoreland on 4/13/13.
//  Copyright (c) 2013 Brent Westmoreland. All rights reserved.
//

#import "MainViewController.h"
#import "PreferenceViewController.h"

@interface MainViewController()

@property (strong, nonatomic) PreferenceViewController *preferenceViewController;

@end

@implementation MainViewController

- (IBAction)bottomActionChosen:(UIButton *)sender
{
    DLog(@"Botton Action Chosen");
    self.preferenceViewController = [[PreferenceViewController alloc] initWithNibName:@"PreferenceView"
                                                                                                    bundle:nil];
    [self.navigationController pushViewController:self.preferenceViewController animated:YES];
    
    
}

- (IBAction)topActionChosen:(UIButton *)sender
{
    DLog(@"Top Action Chosend");
    
}

- (IBAction)personChosen:(UIButton *)sender
{
    DLog(@"Person Chosen");
    
}

@end
