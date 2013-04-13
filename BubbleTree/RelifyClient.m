//
//  RelifyClient.m
//  BubbleTree
//
//  Created by Brent Westmoreland on 4/13/13.
//  Copyright (c) 2013 Brent Westmoreland. All rights reserved.
//

#import "RelifyClient.h"



@implementation RelifyClient

+(RelifyClient *)sharedClient
{
    static RelifyClient *_sharedClient;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedClient = [[RelifyClient alloc] initWithBaseURL:[NSURL URLWithString:@"https://api.relify.com/1/"]];
    });
    
    return _sharedClient;
}

@end
