//
//  NSNotificationCenter+UnitTests+Utility.h
//  UnitTestingSample
//
//  Created by sumantar on 27/03/13.
//  Copyright (c) 2013 sumantar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSNotificationCenter (UnitTests)

+(id)createMockedNotificationCenter;
+(id)createNiceMockedNotificationCenter;
+(void)releaseInstance;

@end
