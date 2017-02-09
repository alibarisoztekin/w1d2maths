//
//  QuestionManager.h
//  Maths
//
//  Created by Ali Barış Öztekin on 2017-02-08.
//  Copyright © 2017 Ali Barış Öztekin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"


@interface QuestionManager : NSObject

@property (nonatomic,strong) NSMutableArray* questions;

-(NSString*) timeOutput;


@end
