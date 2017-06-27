//
//  HackerNewsAPI.h
//  HackerNews
//
//  Created by Lochlan McIntosh on 6/22/17.
//  Copyright © 2017 Lochlan McIntosh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Story.h"

@interface HackerNewsAPI : NSObject
+ (NSURL *)storyURL:(NSInteger)itemId;
+ (Story *)storyFromJSONData:(NSData *)jsonData;
@end
