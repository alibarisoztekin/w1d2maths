//
//  ScoreKeeper.h
//  Maths
//
//  Created by Ali Barış Öztekin on 2017-02-07.
//  Copyright © 2017 Ali Barış Öztekin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property NSInteger right;
@property NSInteger wrong;

- (void)score;

@end
