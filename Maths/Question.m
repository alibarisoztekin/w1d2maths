//
//  AdditionQuestion.m
//  Maths
//
//  Created by Ali Barış Öztekin on 2017-02-07.
//  Copyright © 2017 Ali Barış Öztekin. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init
{
    self = [super init];
    if (self) {
        _rand1 = arc4random_uniform(90)+10;
        _rand2 = arc4random_uniform(90)+10;
        
        _startTime = [NSDate date];
        
    }
    return self;
}
-(void) generateQuestion{
    
}

- (NSInteger) answer{
    _endTime = [NSDate date];
    return _answer;
}

-(NSTimeInterval)answerTime;
{
    return [_endTime timeIntervalSinceDate:_startTime];
}
@end
