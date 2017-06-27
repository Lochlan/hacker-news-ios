//
//  Story.h
//  HackerNews
//
//  Created by Lochlan McIntosh on 6/22/17.
//  Copyright © 2017 Lochlan McIntosh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Story : NSObject
@property(readonly, nonatomic) NSNumber *itemId;
@property(readonly, copy, nonatomic) NSString *by;
@property(readonly, nonatomic) NSNumber *descendants;
@property(readonly, copy, nonatomic) NSArray *kids;
@property(readonly, nonatomic) NSNumber *score;
@property(readonly, nonatomic) NSNumber *time;
@property(readonly, copy, nonatomic) NSString *title;
@property(readonly, copy, nonatomic) NSString *url;

- (instancetype)initWithId:(NSNumber *)itemId
    by:(NSString *)by
    descendants:(NSNumber *)descendants
    kids:(NSArray *)kids
    score:(NSNumber *)score
    time:(NSNumber *)time
    title:(NSString *)title
    url:(NSString *)url
    NS_DESIGNATED_INITIALIZER;

@end
