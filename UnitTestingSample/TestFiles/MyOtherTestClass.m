//
//  MyOtherTestClass.m
//  UnitTestingSample
//
//  Created by sumantar on 23/03/13.
//  Copyright (c) 2013 sumantar. All rights reserved.
//

#import "MyOtherTestClass.h"

@implementation MyOtherTestClass
- (void) displayFromTestClass:(MyTestClass *)testCls{
    [testCls display];
}

- (void) displayErrorFromTestClass:(MyTestClass *)testCls{
    [testCls showErrorMessage];
}

- (void) checkWithBlock{
    MyTestClass *test = [[MyTestClass alloc] init];
    [test doSomeOperation:^(BOOL result){
        if(result){
            NSLog(@"Block Called Successfully");
        }
    }];
}
@end
