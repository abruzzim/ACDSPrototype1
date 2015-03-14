//
//  BetaViewController.m
//  ACDSPrototype
//
//  Created by abruzzim on 3/13/15.
//  Copyright (c) 2015 Mario Abruzzi. All rights reserved.
//

#import "BetaViewController.h"

@interface BetaViewController ()

@end

@implementation BetaViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        // Custom initialization.
        self.title = @"Protocols";
        self.tabBarItem.image = [UIImage imageNamed:@"medical50"];
    }
    
    return self;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Additional setup.
    self.view.backgroundColor = [UIColor greenColor];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 5;
}

/*
 This method runs one time for each row as it becomes visible.
 */
- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Initialize and setup each cell in the table view.
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellID"];
    // If there is no reusable cell with identifier @"CellID" then allocate a new one.
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle
                                      reuseIdentifier:@"CellID"];
    }
    // add start/resume button
    UIButton *protocolButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    protocolButton.frame = CGRectMake(cell.frame.size.width - 25.0f, 7.0f, 65.0f, 30.0f);
    NSLog(@"Cell width is %f", cell.frame.size.width);
    protocolButton.backgroundColor = [UIColor grayColor];
    protocolButton.layer.cornerRadius = 5;
    [protocolButton setTitle:@"Start" forState:UIControlStateNormal];
    [cell addSubview:protocolButton];
    [protocolButton addTarget:self action:@selector(startProtocol:) forControlEvents:UIControlEventTouchUpInside];
    return cell;

}

- (void) startProtocol:(UIButton *)sender {
    NSLog(@"Protocol Start button pressed");
}

/*
 This method runs when a row is touched.
 */
- (void)       tableView:(UITableView *)tableView
 didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"Row %lu was touched", indexPath.row);
}


@end
