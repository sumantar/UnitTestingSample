//
//  ProtocolTest.m
//  UnitTestingSample
//
//  Created by sumantar on 22/03/13.
//  Copyright (c) 2013 sumantar. All rights reserved.
//
#import <SenTestingKit/SenTestingKit.h>
#import <OCMock/OCMock.h>
#import "MyTestClass.h"


@interface ProtocolTest : SenTestCase

@end

@implementation ProtocolTest
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

- (void)testTheProtocol
{
    id authService = [OCMockObject mockForProtocol:@protocol(AuthenticationServiceProtocol)];
    id foo = [[MyTestClass alloc] initWithAuthenticationService:authService];
    
    [[authService expect] loginWithEmail:[OCMArg any] andPassword:[OCMArg any]];
    
    [foo doStuff];
    
    [authService verify];
}
@end
