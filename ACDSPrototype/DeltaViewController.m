//
//  DeltaViewController.m
//  ACDSPrototype
//
//  Created by abruzzim on 3/13/15.
//  Copyright (c) 2015 Mario Abruzzi. All rights reserved.
//

#import "DeltaViewController.h"

@interface DeltaViewController ()

@end

@implementation DeltaViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        // Custom initialization.
        self.title = @"DeltaVC";
        self.tabBarItem.image = [UIImage imageNamed:@"microscope13"];
    }
    
    return self;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Additional setup.
    self.view.backgroundColor = [UIColor orangeColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
