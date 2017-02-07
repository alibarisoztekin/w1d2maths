//
//  AdditionQuestion.m
//  Maths
//
//  Created by Ali Barış Öztekin on 2017-02-07.
//  Copyright © 2017 Ali Barış Öztekin. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion 

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSInteger rand1 = arc4random_uniform(90)+10;
        NSInteger rand2 = arc4random_uniform(90)+10;
        _answer = rand1+rand2;
        _question =[NSString stringWithFormat:@" %li + %li", (long)rand1, (long)rand2];
        NSLog(@"%@", _question);
    }
    return self;
}

@end
