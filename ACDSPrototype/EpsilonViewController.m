//
//  EpsilonViewController.m
//  ACDSPrototype
//
//  Created by abruzzim on 3/13/15.
//  Copyright (c) 2015 Mario Abruzzi. All rights reserved.
//

#import "EpsilonViewController.h"

@interface EpsilonViewController ()

@end

@implementation EpsilonViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        // Custom initialization.
        self.title = @"Video";
        self.tabBarItem.image = [UIImage imageNamed:@"professional8"];
    }
    
    return self;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Additional setup.
    self.view.backgroundColor = [UIColor yellowColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
