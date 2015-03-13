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
        self.title = @"BetaVC";
        self.tabBarItem.image = [UIImage imageNamed:@"medical52"];
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

@end
