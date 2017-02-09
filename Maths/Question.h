//
//  AdditionQuestion.h
//  Maths
//
//  Created by Ali Barış Öztekin on 2017-02-07.
//  Copyright © 2017 Ali Barış Öztekin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (nonatomic,strong) NSString* question;
@property (nonatomic) NSInteger answer;

@property (nonatomic,strong) NSDate* startTime;
@property (nonatomic,strong) NSDate* endTime;
@property (nonatomic) NSInteger rand1;
@property (nonatomic) NSInteger rand2;



-(NSTimeInterval)answerTime;
-(void) generateQuestion;

@end
