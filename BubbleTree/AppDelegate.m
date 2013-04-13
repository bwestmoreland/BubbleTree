//
//  AppDelegate.m
//  BubbleTree
//
//  Created by Brent Westmoreland on 4/13/13.
//  Copyright (c) 2013 Brent Westmoreland. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.mainViewController = [[MainViewController alloc] initWithNibName:@"MainView" bundle:nil];
    self.window.rootViewController = self.mainViewController;
    [self.window makeKeyAndVisible];
    return YES;
}


@end
