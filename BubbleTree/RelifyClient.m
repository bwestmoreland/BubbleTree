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

- (NSArray *)venuesFromJSON:(NSString *)objectNotation
                      error:(NSError *__autoreleasing *)error
{
    NSParameterAssert(objectNotation != nil);
    
    NSData *unicodeNotation = [objectNotation dataUsingEncoding:NSUTF8StringEncoding];
    
    NSError *localError = nil;
    
    id jsonObject = [NSJSONSerialization JSONObjectWithData:unicodeNotation
                                                    options:0
                                                      error:&localError];
    NSDictionary *parsedObject = (id)jsonObject;
    
    if (parsedObject == nil){
        if (error != NULL){
            *error = [NSError errorWithDomain:VenueBuilderErrorDomain
                                         code:VenueBuilderInvalidJSONError
                                     userInfo:nil];
        }
        return nil;
    }
    
    NSArray *venues = parsedObject[@"venues"];
    
    if (venues == nil){
        if (error != NULL){
            *error = [NSError errorWithDomain:VenueBuilderErrorDomain
                                         code:VenueBuilderMissingDataError
                                     userInfo:nil];
        }
        return nil;
    }
    NSMutableArray *results = [NSMutableArray arrayWithCapacity: [venues count]];
    for (NSDictionary *parsedVenues in venues) {
        //Do stuff with venues.
    }
    return [results copy];
    
}

NSString *VenueBuilderErrorDomain = @"VenueBuilderErrorDomain";

@end
