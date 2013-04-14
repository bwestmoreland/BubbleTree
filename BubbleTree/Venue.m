//
//  Venue.m
//
//  Created by Brent Westmoreland  on 4/13/13
//  Copyright (c) 2013 Brent Westmoreland. All rights reserved.
//

#import "Venue.h"


@interface Venue ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;


@end

@implementation Venue

@synthesize phone = _phone;
@synthesize postalCode = _postalCode;
@synthesize city = _city;
@synthesize address = _address;
@synthesize lastKey = _lastKey;
@synthesize userId = _userId;
@synthesize placeId = _placeId;
@synthesize name = _name;
@synthesize state = _state;

+(NSArray *)setup
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"score" ofType:@"json"];
    NSError *error = nil;
    NSString *jsonString = [[NSString alloc] initWithContentsOfFile:path encoding:NSUTF8StringEncoding error:&error];
    if (error) {
        DLog(@"Houston, we have a problem %@", [error localizedDescription]);
    }
    id jsonDictionary = [NSJSONSerialization JSONObjectWithData:[jsonString dataUsingEncoding:NSUTF8StringEncoding]
                                                                   options:kNilOptions
                                                                     error:nil];
    
    if ([jsonDictionary isKindOfClass:[NSArray class]]){
        return jsonDictionary;
    }
    return nil;
}

+ (Venue *)modelObjectWithDictionary:(NSDictionary *)dict
{
    Venue *instance = [[Venue alloc] initWithDictionary:dict];
    return instance;
}

- (id)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    
    // This check serves to make sure that a non-NSDictionary object
    // passed into the model class doesn't break the parsing.
    if(self && [dict isKindOfClass:[NSDictionary class]]) {
            self.phone = [self objectOrNilForKey:@"phone" fromDictionary:dict];
            self.postalCode = [self objectOrNilForKey:@"postal_code" fromDictionary:dict];
            self.city = [self objectOrNilForKey:@"city" fromDictionary:dict];
            self.address = [self objectOrNilForKey:@"address" fromDictionary:dict];
            self.lastKey = [self objectOrNilForKey:@"last_key" fromDictionary:dict];
            self.userId = [[dict objectForKey:@"user_id"] doubleValue];
            self.placeId = [self objectOrNilForKey:@"place_id" fromDictionary:dict];
            self.name = [self objectOrNilForKey:@"name" fromDictionary:dict];
            self.state = [self objectOrNilForKey:@"state" fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.phone forKey:@"phone"];
    [mutableDict setValue:self.postalCode forKey:@"postal_code"];
    [mutableDict setValue:self.city forKey:@"city"];
    [mutableDict setValue:self.address forKey:@"address"];
    [mutableDict setValue:self.lastKey forKey:@"last_key"];
    [mutableDict setValue:[NSNumber numberWithDouble:self.userId] forKey:@"user_id"];
    [mutableDict setValue:self.placeId forKey:@"place_id"];
    [mutableDict setValue:self.name forKey:@"name"];
    [mutableDict setValue:self.state forKey:@"state"];

    return [NSDictionary dictionaryWithDictionary:mutableDict];
}

- (NSString *)description 
{
    return [NSString stringWithFormat:@"%@", [self dictionaryRepresentation]];
}

#pragma mark - Helper Method
- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict
{
    id object = [dict objectForKey:aKey];
    return [object isEqual:[NSNull null]] ? nil : object;
}


#pragma mark - NSCoding Methods

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];

    self.phone = [aDecoder decodeObjectForKey:@"phone"];
    self.postalCode = [aDecoder decodeObjectForKey:@"postalCode"];
    self.city = [aDecoder decodeObjectForKey:@"city"];
    self.address = [aDecoder decodeObjectForKey:@"address"];
    self.lastKey = [aDecoder decodeObjectForKey:@"lastKey"];
    self.userId = [aDecoder decodeDoubleForKey:@"userId"];
    self.placeId = [aDecoder decodeObjectForKey:@"placeId"];
    self.name = [aDecoder decodeObjectForKey:@"name"];
    self.state = [aDecoder decodeObjectForKey:@"state"];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_phone forKey:@"phone"];
    [aCoder encodeObject:_postalCode forKey:@"postalCode"];
    [aCoder encodeObject:_city forKey:@"city"];
    [aCoder encodeObject:_address forKey:@"address"];
    [aCoder encodeObject:_lastKey forKey:@"lastKey"];
    [aCoder encodeDouble:_userId forKey:@"userId"];
    [aCoder encodeObject:_placeId forKey:@"placeId"];
    [aCoder encodeObject:_name forKey:@"name"];
    [aCoder encodeObject:_state forKey:@"state"];
}


@end
