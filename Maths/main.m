//
//  main.m
//  Maths
//
//  Created by Ali Barış Öztekin on 2017-02-07.
//  Copyright © 2017 Ali Barış Öztekin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "Scorekeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        printf("MATHS!\n\n");

        ScoreKeeper* keepScore = [[ScoreKeeper alloc] init];
        
        while(YES)
        {
            
            
            AdditionQuestion* randomQuestion = [[AdditionQuestion alloc] init];
            char userInput[255];
                        fgets( userInput, sizeof(userInput), stdin);
            NSString* userString = [[NSString alloc] initWithCString:userInput encoding:NSUTF8StringEncoding];
            NSCharacterSet* charSet = [[NSCharacterSet alloc] init];
            charSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
            NSString* trimmedString = [userString stringByTrimmingCharactersInSet:charSet] ;
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
        };
    }
    return 0;
}
