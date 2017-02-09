//
//  QuestionFactory.m
//  Maths
//
//  Created by Ali Barış Öztekin on 2017-02-08.
//  Copyright © 2017 Ali Barış Öztekin. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory


-(Question*) generateRandomQuestion{
    
    NSArray* questionSubClassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"];
    NSInteger randomClass = arc4random_uniform(4);
  
    Question* randomQuestion = [[NSClassFromString(questionSubClassNames[randomClass]) alloc]init];

    return randomQuestion;
}


@end
