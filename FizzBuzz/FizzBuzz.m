//
//  FizzBuzz.m
//  FizzBuzz
//
//  Created by Stephen Chiang on 2019/8/17.
//  Copyright © 2019 Stephen Chiang. All rights reserved.
//

#import "FizzBuzz.h"

@implementation FizzBuzz

- (NSArray *)print {
    NSMutableArray *result = [NSMutableArray new];
    NSInteger count = 100;
    for (int i = 0; i < count; i ++) {
        NSInteger index = i + 1;
        if (index % 3 == 0 && index % 5 == 0) {
            [result addObject:@"FizzBuzz"];
        } else if (index % 3 == 0) {
            [result addObject:@"Fizz"];
        } else if (index % 5 == 0) {
            [result addObject:@"Buzz"];
        } else {
            [result addObject:@(index)];
        }
    }
    for (id object in result) { NSLog(@"%@", object);}
    return result;
}

@end
