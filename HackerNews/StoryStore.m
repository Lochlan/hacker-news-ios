//
//  StoryStore.m
//  HackerNews
//
//  Created by Lochlan McIntosh on 6/22/17.
//  Copyright © 2017 Lochlan McIntosh. All rights reserved.
//

#import "StoryStore.h"
#import "HackerNewsAPI.h"
#import "Story.h"

@interface StoryStore ()
@property (nonatomic) NSURLSession *session;
@end

@implementation StoryStore

- (instancetype)init {
    self = [super init];
    if (self) {
        NSURLSessionConfiguration *config = [NSURLSessionConfiguration defaultSessionConfiguration];
        _session = [NSURLSession sessionWithConfiguration:config];
    }
    return self;
}

- (void)fetchStoryByItemId:(NSInteger)itemId {
    NSURL *url = [HackerNewsAPI storyURL:itemId];
    NSURLRequest * request = [NSURLRequest requestWithURL:url];
    NSURLSessionDataTask *task =
        [self.session dataTaskWithRequest:request
                        completionHandler:^(NSData *data,
                                            NSURLResponse *response,
                                            NSError *error) {
                            if (data == nil) {
                                return NSLog(@"Error: %@", error);
                            }

                            Story *story = [HackerNewsAPI storyFromJSONData:data];
                            NSLog(@"%@", story.title);
                        }];
    [task resume];
}

@end
