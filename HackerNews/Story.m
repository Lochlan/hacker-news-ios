//
//  Story.m
//  HackerNews
//
//  Created by Lochlan McIntosh on 6/22/17.
//  Copyright © 2017 Lochlan McIntosh. All rights reserved.
//

#import "Story.h"

@implementation Story
- (instancetype)initWithId:(NSNumber *)itemId
    by:(NSString *)by
    descendants:(NSNumber *)descendants
    kids:(NSArray *)kids
    score:(NSNumber *)score
    time:(NSNumber *)time
    title:(NSString *)title
    url:(NSString *)url
{
    self = [super init];
    if (self) {
        _itemId = itemId;
        _by = [by copy];
        _descendants = descendants;
        _kids = [kids copy];
        _score = score;
        _time = time;
        _title = [title copy];
        _url = [url copy];
    }
    return self;
}

- (instancetype)init {
    return [self initWithId:0 by:nil descendants:0 kids:nil score:0 time:0 title:nil url:nil];
}

@end
