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
    self.navController = [[UINavigationController alloc] initWithRootViewController:self.mainViewController];
    self.window.rootViewController = self.navController;
    [self setupAppearance];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)setupAppearance
{
    UIColor *skyColor = [UIColor colorWithRed: 0.341 green: 0.804 blue: 0.98 alpha: 1];
    [[UINavigationBar appearance] setBackgroundImage:[UIImage imageNamed:@"navbarBackground"] forBarMetrics:UIBarMetricsDefault];
    [[UINavigationBar appearance] setTintColor:skyColor];
    [[UINavigationBar appearance] setShadowImage:[[UIImage alloc] init]];
//    [[UIBarButtonItem appearance] setShadowImage:[[UIImage alloc] init]];
}

@end
