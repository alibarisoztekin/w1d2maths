//
//  ScoreKeeper.m
//  Maths
//
//  Created by Ali Barış Öztekin on 2017-02-07.
//  Copyright © 2017 Ali Barış Öztekin. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (instancetype)init
{
    self = [super init];
    if (self) {
        _right = 0;
        _wrong = 0;
    }
    return self;
}

- (void)score;
{
    NSLog(@"score: %li, right, %li wrong\n", (long)self.right, (long) self.wrong);
}


@end
