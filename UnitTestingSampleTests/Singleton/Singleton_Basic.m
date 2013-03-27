//
//  Singleton_Basic.m
//  UnitTestingSample
//
//  Created by sumantar on 27/03/13.
//  Copyright (c) 2013 sumantar. All rights reserved.
//
/*

1) The simplest way around this problem is to create a category on the singleton in your test code that overrides the singleton instantiator. 

*/

#import <SenTestingKit/SenTestingKit.h>
#import <OCMock/OCMock.h>
#import "MyTestClass.h"


static NSNotificationCenter *mockNotificationCenter = nil;

//static id mockNotificationCenter = nil;

@interface NSNotificationCenter (UnitTests)

@end


@implementation NSNotificationCenter (UnitTests)

+ (id)defaultCenter {
    return mockNotificationCenter;
}

@end

@interface Singleton_Basic : SenTestCase

@end

@implementation Singleton_Basic

- (void) setUp
{
    [super setUp];
}

- (void) tearDown
{
    [super tearDown];
}
//
//-(void) testShouldPostNotification {
//    mockNotificationCenter = [OCMockObject niceMockForClass:[NSNotificationCenter class]];
//    [[mockNotificationCenter expect] postNotificationName:@"TestNotification"];
//    
//    MyTestClass *myObject = [[MyTestClass alloc] init];
//    [myObject invokeNotification:nil];
//    
//    [mockNotificationCenter verify];
//    mockNotificationCenter = nil;
//    /*
//     Note that with this approach, you need to be sure to set the mock instance to nil at the end of your test. OCMocks are autoreleased, so if the test case still has a reference to the released version, you’ll get an EXC_BAD_ACCESS error the next time [NSNotificationCenter defaultCenter] is called. A good place to do that is in your tearDown method, so it’s set back to nil after each test.
//     */
//}


/*
 How do we test real NSNotification? Look for
 
 */
@end
