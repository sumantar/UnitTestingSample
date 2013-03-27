//
//  TableViewTest.m
//  UnitTestingSample
//
//  Created by sumantar on 22/03/13.
//  Copyright (c) 2013 sumantar. All rights reserved.
//
#import <SenTestingKit/SenTestingKit.h>
#import <OCMock/OCMock.h>
#import "TestTableViewController.h"

@interface TableViewTest : SenTestCase

@end

@implementation TableViewTest
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

//Validate Static Constructor
//We will write testcases to validate
//NSString *s = [NSString string];    // returns empty string

- (void)testTableView
{
    TestTableViewController *controller = [[TestTableViewController alloc] init];
    NSIndexPath *dummyIndexPath = [NSIndexPath indexPathWithIndex:3];
    id tableViewMock = [OCMockObject mockForClass:[UITableView class]];
    [[tableViewMock expect] deleteRowsAtIndexPaths:[NSArray arrayWithObject:dummyIndexPath] withRowAnimation:UITableViewRowAnimationFade];
    
    // Invoke functionality to be tested
    // If you want to see the test fail you can, for example, change the editing style to UITableViewCellEditingStyleNone. In
    // that case the method in the controller does not make a call to the table view and the mock will raise an exception when
    // verify is called further down.
    
    [controller tableView:tableViewMock commitEditingStyle:UITableViewCellEditingStyleDelete forRowAtIndexPath:dummyIndexPath];
    
    // Verify that expectations were met
    
    [tableViewMock verify];
}

- (void)testControllerReturnsCorrectNumberOfRows
{
	TestTableViewController *controller = [[TestTableViewController alloc] initWithStyle:UITableViewStylePlain];
	
	///STAssertEquals(1, [controller tableView:nil numberOfRowsInSection:0], @"Should have returned correct number of rows.");
}

/*
in the following Apple document. This project is set up following the steps outlined in the document.

http://developer.apple.com/iphone/library/documentation/xcode/conceptual/iphone_development/135-Unit_Testing_Applications/unit_testing_applications.html

The first test could be run as a "logic test" but the second test invokes functionality that sets a cell
label, which requires instantiation of a font, and that is not possible outside the device/simulator. The
following discussion has a bit more detail:

http://stackoverflow.com/questions/1689586/why-does-instantiating-a-uifont-in-an-iphone-unit-test-cause-a-crash
*/

@end
