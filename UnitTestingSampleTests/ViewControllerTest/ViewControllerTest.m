//
//  ViewControllerTest.m
//  UnitTestingSample
//
//  Created by sumantar on 27/03/13.
//  Copyright (c) 2013 sumantar. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import <OCMock/OCMock.h>
#import "ViewController.h"

@interface ViewControllerTest : SenTestCase
{
    ViewController *ctrl;
    id mockForString;
}
@end

@implementation ViewControllerTest

- (void) setUp
{
    ctrl = [[ViewController alloc] init];// Here we can load it through XIB using API - initWithNibName
    mockForString = [OCMockObject mockForClass:[NSString class]];
    [[mockForString expect] uppercaseString];
    ctrl.name = mockForString;
    
}

- (void) tearDown
{
    [mockForString verify];
}

- (void) testControllerMethod
{
    mockForString = [mockForString uppercaseString];
    [ctrl doAction:nil];
}
@end
