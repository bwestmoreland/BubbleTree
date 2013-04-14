//
//  LoginViewController.h
//  BubbleTree
//
//  Created by Brent Westmoreland on 4/14/13.
//  Copyright (c) 2013 Brent Westmoreland. All rights reserved.
//

@interface LoginViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *usernameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;

- (IBAction)login:(UIButton *)sender;
- (IBAction)cancel:(UIButton *)sender;

@end
