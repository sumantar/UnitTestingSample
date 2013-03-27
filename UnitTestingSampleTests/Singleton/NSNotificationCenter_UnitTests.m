//
//  NSNotificationCenter_UnitTests.m
//  UnitTestingSample
//
//  Created by sumantar on 27/03/13.
//  Copyright (c) 2013 sumantar. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "NSNotificationCenter+UnitTests+Utility.h"
#import "MyTestClass.h"

@interface NSNotificationCenter_UnitTests : SenTestCase

@property (strong, nonatomic) id mockedNotification;

@end

@implementation NSNotificationCenter_UnitTests
- (void) setUp
{
    self.mockedNotification = [NSNotificationCenter createNiceMockedNotificationCenter];
}

- (void) tearDown
{
    [NSNotificationCenter releaseInstance];
}


-(void)test_mockedNotification_shouldBeEqualToCurrentInstance
{
    self.mockedNotification = [NSNotificationCenter createMockedNotificationCenter];
    
    STAssertEqualObjects(self.mockedNotification, [NSNotificationCenter defaultCenter], nil);
}

-(void) testPostNotification {
    //self.mockedNotification = [NSNotificationCenter createMockedNotificationCenter];
    //[[self.mockedNotification expect] postNotificationName:@"TestNotification" object:nil];
    [self.mockedNotification  postNotificationName:@"TestNotification" object:nil];
    
//    MyTestClass *myObject = [[MyTestClass alloc] init];
//    [myObject invokeNotification:nil];
    
   // [self.mockedNotification verify];

}

@end


