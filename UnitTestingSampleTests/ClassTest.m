//
//  ClassTest.m
//  UnitTestingSample
//
//  Created by sumantar on 22/03/13.
//  Copyright (c) 2013 sumantar. All rights reserved.
//
#import <SenTestingKit/SenTestingKit.h>
#import <OCMock/OCMock.h>

#import "MyOtherTestClass.h"
#import "MyTestClass.h"


@interface ClassTest : SenTestCase

@end

@implementation ClassTest
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

- (void)testAdditionOfTwoNumbers
{
    MyTestClass *testClass = [[MyTestClass alloc] init];
    int result = [testClass additionOfTwoNumbers:10 second:10];
    STAssertEquals(result, 20, @"");
}

- (void) testDisplayFromTestClass
{
    id mockTestClass = [OCMockObject mockForClass:[MyTestClass class]];
    [[mockTestClass expect] display];
    MyOtherTestClass *test = [[MyOtherTestClass alloc] init];
    [test displayFromTestClass:mockTestClass];
}

- (void) testDisplayFromTestClassWithPartialMock
{
    MyTestClass *testClassObj = [[MyTestClass alloc] init];
    id mockTestClass = [OCMockObject partialMockForObject:testClassObj];
    [[[mockTestClass expect] andForwardToRealObject]display];
    MyOtherTestClass *test = [[MyOtherTestClass alloc] init];
    [test displayFromTestClass:mockTestClass];
}

- (void) testDisplayFromTestClassWithNiceMock
{
    id mockTestClass = [OCMockObject niceMockForClass:[MyTestClass class]];
//    id mockTestClass = [OCMockObject mockForClass:[MyTestClass class]];
//    [[mockTestClass expect] showErrorMessage];
    MyOtherTestClass *test = [[MyOtherTestClass alloc] init];
    [test displayErrorFromTestClass:mockTestClass];
}
@end
