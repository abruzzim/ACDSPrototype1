//
//  BetaViewController.m
//  ACDSPrototype
//
//  Created by abruzzim on 3/13/15.
//  Copyright (c) 2015 Mario Abruzzi. All rights reserved.
//

#import "BetaViewController.h"
#import "TreatmentProtocol.h"
#import "SepsisViewController.h"

@interface BetaViewController ()

@property NSMutableArray *treatmentProtocols;

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
    self.treatmentProtocols = [[NSMutableArray alloc] init];
    [self loadInitialData];
    
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
    return [self.treatmentProtocols count];
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
    
    // Add the main label of the cell.
    TreatmentProtocol *treatmentProtocol = [self.treatmentProtocols objectAtIndex:indexPath.row];
    cell.textLabel.text = treatmentProtocol.protocolName;
    
    // Add the Start/Resume button to the cell.
    UIButton *protocolButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    protocolButton.layer.cornerRadius = 5;
    protocolButton.frame = CGRectMake(685.0f, 7.0f, 65.0f, 30.0f);
    protocolButton.backgroundColor = [UIColor grayColor];
    [protocolButton setTitle:@"Start"
                    forState:UIControlStateNormal];
    [cell addSubview:protocolButton];
    [protocolButton addTarget:self
                       action:@selector(startProtocol:)
             forControlEvents:UIControlEventTouchUpInside];

    return cell;

}

// This method runs when the Start button is tapped.

- (void) startProtocol:(UIButton *)sender
{
    NSLog(@"Protocol Start button pressed");
    SepsisViewController *sepsisVC = [[SepsisViewController alloc] init];
    [self.navigationController pushViewController:sepsisVC animated:YES];
}

// This method runs when a row is touched.

- (void)       tableView:(UITableView *)tableView
 didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"Row %lu was touched", indexPath.row);
}


// Load the list of treatment protocols from the mutable array.

- (void) loadInitialData {
    TreatmentProtocol *item1 = [[TreatmentProtocol alloc] init];
    item1.protocolName = @"Sepsis";
    [self.treatmentProtocols addObject:item1];
    
    TreatmentProtocol *item2 = [[TreatmentProtocol alloc] init];
    item2.protocolName = @"Diabetic Ketoacidosis";
    [self.treatmentProtocols addObject:item2];
    
    TreatmentProtocol *item3 = [[TreatmentProtocol alloc] init];
    item3.protocolName = @"Traumatic Brain Injury";
    [self.treatmentProtocols addObject:item3];
    
    TreatmentProtocol *item4 = [[TreatmentProtocol alloc] init];
    item4.protocolName = @"Status Asthmaticus";
    [self.treatmentProtocols addObject:item4];
    
    TreatmentProtocol *item5 = [[TreatmentProtocol alloc] init];
    item5.protocolName = @"Status Epilepticus";
    [self.treatmentProtocols addObject:item5];
}

@end
