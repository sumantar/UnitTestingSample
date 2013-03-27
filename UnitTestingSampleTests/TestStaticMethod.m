//
//  TestStaticMethod.m
//  UnitTestingSample
//
//  Created by sumantar on 22/03/13.
//  Copyright (c) 2013 sumantar. All rights reserved.
//
#import <SenTestingKit/SenTestingKit.h>
#import <OCMock/OCMock.h>

@interface TestStaticMethod : SenTestCase

@end

@implementation TestStaticMethod
- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

//Validate Static Constructor
//We will write testcases to validate
//NSString *s = [NSString string];    // returns empty string

- (void)test
{
    id mockStringClass = [OCMockObject mockForClass:[NSString class]];
    NSString *mockString = @"Mocked String Result";
    [[[mockStringClass stub] andReturn:mockString] string];
    NSString *actualString = [NSString string];
    STAssertTrue(0 != [actualString length], @"Expected String Not Be Empty");
}

@end
