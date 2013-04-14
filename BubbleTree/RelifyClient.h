//
//  RelifyClient.h
//  BubbleTree
//
//  Created by Brent Westmoreland on 4/13/13.
//  Copyright (c) 2013 Brent Westmoreland. All rights reserved.
//

//FIXME: Currently this class is broken and needs to actually return data.

enum {
    VenueBuilderInvalidJSONError,
    VenueBuilderMissingDataError,
};

@interface RelifyClient : AFOAuth2Client

+(RelifyClient *)sharedClient;

@end
