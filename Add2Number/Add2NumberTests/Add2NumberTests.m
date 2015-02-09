//
//  Add2NumberTests.m
//  Add2NumberTests
//
//  Created by Tawatchai Sunarat on 2/9/15.
//  Copyright (c) 2015 pddk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Addition.h"

@interface Add2NumberTests : XCTestCase

@end

@implementation Add2NumberTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

-(void)testAdditionClassExists {
    Addition *addition = [[Addition alloc] init];
    
    XCTAssertNotNil(addition, @"Addition class exists");
}

-(void)testAdd2Plus2 {
    Addition *addition = [[Addition alloc] init];
    NSInteger result = [addition addNumber:2 withNumber:2];
    
    XCTAssertEqual(result, 4, @"2 + 2 = 4");
}

-(void)testAdd2Plus7 {
    Addition *addition = [[Addition alloc] init];
    NSInteger result = [addition addNumber:2 withNumber:7];
    
    XCTAssertEqual(result, 9, @"2 + 7 = 9");
}

@end
