//
//  PreferenceViewController.h
//  BubbleTree
//
//  Created by Brent Westmoreland on 4/14/13.
//  Copyright (c) 2013 Brent Westmoreland. All rights reserved.
//

@interface PreferenceViewController : UIViewController

@property (nonatomic, strong) Venue *venue;

- (IBAction)didntLikeIt:(UIButton *)sender;
- (IBAction)likedIt:(UIButton *)sender;

@end
