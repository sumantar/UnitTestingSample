//
//  MyTestClass.h
//  UnitTestingSample
//
//  Created by sumantar on 22/03/13.
//  Copyright (c) 2013 sumantar. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^ MyBlock)(BOOL result); 

@protocol AuthenticationServiceProtocol

- (void)loginWithEmail:(NSString *)email andPassword:(NSString *)password;

@end

@interface MyTestClass : NSObject
{
    id<AuthenticationServiceProtocol> delegate;
}
@property(copy, nonatomic) MyBlock block;

- (id)initWithAuthenticationService:(id<AuthenticationServiceProtocol>)anAuthService;

- (void) doStuff;

- (int) additionOfTwoNumbers:(int)num1 second:(int)num2;
- (void) display;
- (void) showErrorMessage;
- (void) invokeNotification:(id)_object;
- (void)registerNotification;
- (void)removeNotification;

- (void) doSomeOperation:(void (^)(BOOL result))success;
@end