//
//  FizzBuzzTests.m
//  FizzBuzzTests
//
//  Created by Stephen Chiang on 2019/8/17.
//  Copyright © 2019 Stephen Chiang. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "FizzBuzz.h"

@interface FizzBuzzTests : XCTestCase

@end

@implementation FizzBuzzTests

- (void)testPrint {
    FizzBuzz *object = [FizzBuzz new];
    NSArray *log = [object print];
    XCTAssertEqual(log.count, 100);
    for (int i = 0; i < log.count; i ++) {
        NSInteger index = i + 1;
        id value = log[i];
        if (index % 3 == 0 && index % 5 == 0) {
//            XCTAssertTrue([value isMemberOfClass:NSString.class]);
            XCTAssertTrue([value isEqualToString:@"FizzBuzz"]);
        } else if (index % 3 == 0) {
//            XCTAssertTrue([value isMemberOfClass:NSString.class]);
            XCTAssertTrue([value isEqualToString:@"Fizz"]);
        } else if (index % 5 == 0) {
//            XCTAssertTrue([value isMemberOfClass:NSString.class]);
            XCTAssertTrue([value isEqualToString:@"Buzz"]);
        } else {
//            XCTAssertTrue([value isMemberOfClass:NSNumber.class]);
            XCTAssertEqual([value integerValue], index);
        }
    }
}

@end
