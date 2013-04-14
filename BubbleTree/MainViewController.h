//
//  MainViewController.h
//  BubbleTree
//
//  Created by Brent Westmoreland on 4/13/13.
//  Copyright (c) 2013 Brent Westmoreland. All rights reserved.
//

@interface MainViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *topActionButton;
@property (weak, nonatomic) IBOutlet UIButton *bottomActionButton;

- (IBAction)bottomActionChosen:(UIButton *)sender;
- (IBAction)topActionChosen:(UIButton *)sender;
- (IBAction)personChosen:(UIButton *)sender;



@end
