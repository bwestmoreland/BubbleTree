//
//  DataViewController.m
//  BubbleTree
//
//  Created by Brent Westmoreland on 4/14/13.
//  Copyright (c) 2013 Brent Westmoreland. All rights reserved.
//

#import "DataViewController.h"

@implementation DataViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]){
        //I know I'll need to do something here eventually
    }
    return self;
}

- (void)setJsonData:(NSString *)jsonData
{
    DLog(@"%@", jsonData);
    if (jsonData){
        _jsonData = jsonData;
    }
    self.textView.text = _jsonData;
}

@end
