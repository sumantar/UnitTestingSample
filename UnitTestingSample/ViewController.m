//
//  ViewController.m
//  UnitTestingSample
//
//  Created by sumantar on 21/03/13.
//  Copyright (c) 2013 sumantar. All rights reserved.
//

#import "ViewController.h"
#import "TestTableViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _name = @"Sumanta";
	
}
- (void) viewWillAppear:(BOOL)animated
{
    // Do any additional setup after loading the view, typically from a nib.
    //TestTableViewController *ctrl = [[TestTableViewController alloc]initWithNibName:@"TestTavleView" bundle:nil];
    
    TestTableViewController *ctrl = [[TestTableViewController alloc] initWithStyle:UITableViewStylePlain];
    
    //    UITableView *view = (UITableView *)ctrl.view;
    //    view.delegate = ctrl;
    //    view.dataSource = ctrl;
    [self.view addSubview:ctrl.view];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)doAction:(id)sender
{
    _name = @"Sumanta";
    NSLog(@"%@",_name);
}

@end
