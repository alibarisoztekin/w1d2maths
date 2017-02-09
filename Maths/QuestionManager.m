//
//  QuestionManager.m
//  Maths
//
//  Created by Ali Barış Öztekin on 2017-02-08.
//  Copyright © 2017 Ali Barış Öztekin. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions= [NSMutableArray array];
    }
    return self;
}

-(NSString*) timeOutput;
{
    NSTimeInterval totalTime = 0;
    NSTimeInterval averageTime = 0;
    
    for ( id question in _questions) {
        totalTime += [question answerTime];
    }
   
    averageTime = totalTime/(sizeof(_questions));
    return [NSString stringWithFormat:@"total time: %.fs, average time %.fs]", totalTime, averageTime];
}

@end
