//
//  main.m
//  Maths
//
//  Created by Ali Barış Öztekin on 2017-02-07.
//  Copyright © 2017 Ali Barış Öztekin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "Scorekeeper.h"
#import "InputHandler.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        printf("MATHS!\n\n");

        ScoreKeeper* keepScore = [[ScoreKeeper alloc] init];
        QuestionManager* questionManager = [[QuestionManager alloc] init];
        QuestionFactory* questionFactory = [[QuestionFactory alloc] init];
        
        while(YES)
        {
            Question* randomQuestion = [questionFactory generateRandomQuestion];
            
            NSString* trimmedString = [InputHandler handleInput];
            
            
            if([trimmedString isEqualToString:@"quit"])
                break;
            else if ([trimmedString isEqualToString:@"score"]){
                [keepScore score];
                continue;
            }
            
            NSInteger userAnswer = [trimmedString integerValue];
            if (randomQuestion.answer == userAnswer ) {
                NSLog(@"Right!\n");
                keepScore.right++;
            }
            else{
                NSLog(@"Wrong!\n");
                keepScore.wrong++;
            }
            [questionManager.questions addObject:randomQuestion];
            
            NSLog(@"%@", [questionManager timeOutput]);
        };
    
    }
    return 0;
}
