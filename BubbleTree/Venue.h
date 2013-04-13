//
//  NSObject.h
//
//  Created by   on 4/13/13
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface Venue : NSObject <NSCoding>

@property (nonatomic, strong) NSString *phone;
@property (nonatomic, strong) NSString *postalCode;
@property (nonatomic, strong) NSString *city;
@property (nonatomic, strong) NSString *address;
@property (nonatomic, strong) NSString *lastKey;
@property (nonatomic, assign) double userId;
@property (nonatomic, strong) NSString *placeId;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *state;

+ (NSObject *)modelObjectWithDictionary:(NSDictionary *)dict;
- (id)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
