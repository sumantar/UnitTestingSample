//
//  NSNotificationCenter+UnitTests.m
//  UnitTestingSample
//
//  Created by sumantar on 27/03/13.
//  Copyright (c) 2013 sumantar. All rights reserved.
//

#import "NSNotificationCenter+UnitTests+Utility.h"
#import <OCMock/OCMock.h>
#import "NSObject+SupersequentImplementation.h"

static NSNotificationCenter *_mockedNotificationObject = nil;

@implementation NSNotificationCenter (UnitTests)
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-protocol-method-implementation"

+ (id)defaultCenter
{
    if (_mockedNotificationObject)
        return _mockedNotificationObject;
    
    return invokeSupersequentNoParameters();
}

#pragma clang diagnostic pop

+(id)createMockedNotificationCenter
{
    _mockedNotificationObject = [OCMockObject mockForClass:[NSNotificationCenter class]];
    return _mockedNotificationObject;
}
+(id)createNiceMockedNotificationCenter
{
    _mockedNotificationObject = [OCMockObject niceMockForClass:[NSNotificationCenter class]];
    return _mockedNotificationObject;
}
+(void)releaseInstance
{
    _mockedNotificationObject = nil;
}

@end