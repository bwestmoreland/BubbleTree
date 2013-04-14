//
//  MainViewController.m
//  BubbleTree
//
//  Created by Brent Westmoreland on 4/13/13.
//  Copyright (c) 2013 Brent Westmoreland. All rights reserved.
//

#import "MainViewController.h"
#import "PreferenceViewController.h"
#import "DataViewController.h"

@interface MainViewController()

@property (strong, nonatomic) PreferenceViewController *preferenceViewController;
@property (strong, nonatomic) DataViewController *dataViewController;

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
    DLog(@"Top Action Chosen");
    self.dataViewController = [[DataViewController alloc] initWithNibName:@"DataView"
                                                                   bundle:nil];
    self.dataViewController.jsonData = @"Fake JSON";
    [self.navigationController pushViewController:self.dataViewController animated:YES];
    
}

- (IBAction)personChosen:(UIButton *)sender
{
    DLog(@"Person Chosen");
    NSArray *venues = [Venue setup];
    DLog(@"venues %@", venues);
}

@end
