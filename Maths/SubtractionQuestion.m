//
//  SubtractionQuestion.m
//  Maths
//
//  Created by Ali Barış Öztekin on 2017-02-08.
//  Copyright © 2017 Ali Barış Öztekin. All rights reserved.
//

#import "SubtractionQuestion.h"

@implementation SubtractionQuestion
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

-(void) generateQuestion{
    super.answer = super.rand1 - super.rand2;
    super.question =[NSString stringWithFormat:@" %li - %li ?", (long)super.rand1, (long)super.rand2];
    NSLog(@"%@", super.question);
}
@end
