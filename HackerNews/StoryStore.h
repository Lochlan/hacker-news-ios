//
//  StoryStore.h
//  HackerNews
//
//  Created by Lochlan McIntosh on 6/22/17.
//  Copyright © 2017 Lochlan McIntosh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StoryStore : NSObject

- (void)fetchStoryByItemId:(NSInteger)itemId;

@end
