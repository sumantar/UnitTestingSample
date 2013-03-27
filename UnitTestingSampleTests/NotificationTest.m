//
//  NotificationTest.m
//  UnitTestingSample
//
//  Created by sumantar on 22/03/13.
//  Copyright (c) 2013 sumantar. All rights reserved.
//
#import <SenTestingKit/SenTestingKit.h>
#import <OCMock/OCMock.h>
#import "MyTestClass.h"


@interface NotificationTest : SenTestCase

@end

@implementation NotificationTest
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
- (void)testNotification
{
    id mockWithObserver = [OCMockObject observerMock];
    [[NSNotificationCenter defaultCenter] addMockObserver:mockWithObserver
                                                     name:@"TestNotification"
                                                   object:nil];
    [[mockWithObserver expect] notificationWithName:@"TestNotification" object:[OCMArg any]];
    
    MyTestClass *test = [[MyTestClass alloc] init];
    [test invokeNotification:nil];
    [mockWithObserver verify];
}

@end
