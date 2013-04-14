//
//  DataViewController.h
//  BubbleTree
//
//  Created by Brent Westmoreland on 4/14/13.
//  Copyright (c) 2013 Brent Westmoreland. All rights reserved.
//

@interface DataViewController : UIViewController


@property (strong, nonatomic) NSString *jsonData;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end
