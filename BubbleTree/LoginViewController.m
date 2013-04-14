//
//  LoginViewController.m
//  BubbleTree
//
//  Created by Brent Westmoreland on 4/14/13.
//  Copyright (c) 2013 Brent Westmoreland. All rights reserved.
//

#import "LoginViewController.h"

@implementation LoginViewController



- (IBAction)login:(UIButton *)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)cancel:(UIButton *)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (void)textFieldDidEndEditing:(UITextField *)textField
{
    [textField resignFirstResponder];
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    return YES;
}

@end
