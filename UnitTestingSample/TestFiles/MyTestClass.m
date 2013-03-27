//
//  MyTestClass.m
//  UnitTestingSample
//
//  Created by sumantar on 22/03/13.
//  Copyright (c) 2013 sumantar. All rights reserved.
//

#import "MyTestClass.h"

@implementation MyTestClass
- (id)init
{
    self = [super init];
    if (self) {
    }
    return self;
}
- (id)initWithAuthenticationService:(id<AuthenticationServiceProtocol>)anAuthService
{
    self = [super init];
    delegate = anAuthService;
    return self;
}
- (void)dealloc
{
}
- (void)doStuff
{
    [delegate loginWithEmail:@"x" andPassword:@"y"];
}

- (int) additionOfTwoNumbers:(int)num1 second:(int)num2
{
    int result = num1 + num2;
    NSLog(@"Result: %d", result);
    return result;
}

- (void) display
{
    NSLog(@"Result");
}

- (void) showErrorMessage{
    NSLog(@"Error Message");
}

#pragma notification
- (void)registerNotification{
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(receiveTestNotification:)
                                                 name:@"TestNotification"
                                               object:nil];
}
- (void)removeNotification{
    [[NSNotificationCenter defaultCenter] removeObserver:self]; 
}
- (void) invokeNotification:(id)_object{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"TestNotification" object:_object];
}

- (void) receiveTestNotification:(NSNotification *) notification
{
    if ([[notification name] isEqualToString:@"TestNotification"])
    {
        NSLog (@"Successfully received the test notification!");
    }
}

#pragma blocks
- (void) doSomeOperation:(void (^)(BOOL result))success{
    self.block = success;
    //Now do the operation and business logic
    self.block(YES);
}
@end
