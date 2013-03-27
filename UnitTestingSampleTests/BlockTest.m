//
//  BlockTest.m
//  UnitTestingSample
//
//  Created by sumantar on 22/03/13.
//  Copyright (c) 2013 sumantar. All rights reserved.
//
#import <SenTestingKit/SenTestingKit.h>
#import <OCMock/OCMock.h>
#import "MyOtherTestClass.h"


@interface BlockTest : SenTestCase

@end

@implementation BlockTest
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

- (void)testBlock
{
    id mock = [OCMockObject mockForClass:[MyTestClass class]];

    /*This will not invoke the block method*/
    //MyTestClass *test = [[MyTestClass alloc] init];
    //id mock = [OCMockObject partialMockForObject:test];
    //[[mock expect] doSomeOperation:[OCMArg any]];
    void (^theBlock)(NSInvocation *) = ^(NSInvocation *invocation) {
        /* code that reads and modifies the invocation object */
        void (^MyBlock)(BOOL result) = nil;
        
        // Using NSInvocation, we get access to the concrete block function
        // that has been passed in by the actual test
        // the arguments for the actual method start with 2 (see NSInvocation doc)
        [invocation getArgument:&MyBlock atIndex:2];
        //MyBlock(NO);
        MyBlock(YES);
        
    };
    //1): One Approch
    //[[[mock stub] andDo:theBlock] doSomeOperation:[OCMArg any]];
    
    //2): Second Approch
    /*
    [[[mock stub] andDo:theBlock] doSomeOperation:^(BOOL result){
        if(result)
        {
            NSLog(@"Block Invoked Successfully");
        }
    }];
     */
     
    //3) Approch
    
    [[[mock expect] andDo:theBlock] doSomeOperation:[OCMArg any]];
    //Run the actual tests
    [mock doSomeOperation:^(BOOL result) {
        if(result)
        {
            NSLog(@"Block Invoked Successfully");
        }
    }];
}

@end
