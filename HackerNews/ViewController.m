//
//  ViewController.m
//  HackerNews
//
//  Created by Lochlan McIntosh on 6/22/17.
//  Copyright © 2017 Lochlan McIntosh. All rights reserved.
//

#import "ViewController.h"
#import "StoryStore.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.storyStore fetchStoryByItemId:8863];
}

@end
