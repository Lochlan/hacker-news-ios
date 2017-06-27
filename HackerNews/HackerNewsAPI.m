//
//  HackerNewsAPI.m
//  HackerNews
//
//  Created by Lochlan McIntosh on 6/22/17.
//  Copyright © 2017 Lochlan McIntosh. All rights reserved.
//

#import "HackerNewsAPI.h"
#import "Story.h"

NSString * const BaseURLString = @"https://hacker-news.firebaseio.com/v0";

@implementation HackerNewsAPI

+ (NSURL *)storyURL:(NSInteger)itemId {
    NSArray *pathArray = @[
        BaseURLString,
        @"item",
        [[@(itemId) stringValue] stringByAppendingString:@".json"]
    ];
    NSString *urlString = [pathArray componentsJoinedByString:@"/"];

    NSURLComponents *components = [NSURLComponents componentsWithString:urlString];

    NSURLQueryItem *queryItem = [NSURLQueryItem queryItemWithName:@"print" value:@"pretty"];

    components.queryItems = @[queryItem];

    return components.URL;
}

+ (Story *)storyFromJSONDict:(NSDictionary *)jsonDict {
    return [[Story alloc]
        initWithId:jsonDict[@"id"]
        by:jsonDict[@"by"]
        descendants:jsonDict[@"descendants"]
        kids:jsonDict[@"kids"]
        score:jsonDict[@"score"]
        time:jsonDict[@"time"]
        title:jsonDict[@"title"]
        url:jsonDict[@"url"]
    ];
}

+ (Story *)storyFromJSONData:(NSData *)jsonData {
    NSError *parseError = nil;
    NSDictionary *jsonDict = [NSJSONSerialization JSONObjectWithData:jsonData options:0 error:&parseError];

    if (jsonDict == nil) {
        NSLog(@"Error parsing JSON Data: %@", parseError);
        return nil;
    }

    return [self storyFromJSONDict:jsonDict];
}

@end
