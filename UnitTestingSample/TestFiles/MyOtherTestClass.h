//
//  MyOtherTestClass.h
//  UnitTestingSample
//
//  Created by sumantar on 23/03/13.
//  Copyright (c) 2013 sumantar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyTestClass.h"

@interface MyOtherTestClass : NSObject

- (void) displayFromTestClass:(MyTestClass *)testCls;
- (void) displayErrorFromTestClass:(MyTestClass *)testCls;
- (void) checkWithBlock;
@end
