//
//  GammaViewController.m
//  ACDSPrototype
//
//  Created by abruzzim on 3/13/15.
//  Copyright (c) 2015 Mario Abruzzi. All rights reserved.
//

#import "GammaViewController.h"

@interface GammaViewController ()

@end

@implementation GammaViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        // Custom initialization.
        self.title = @"GammaVC";
        self.tabBarItem.image = [UIImage imageNamed:@"caduceus3"];
    }
    
    return self;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Additional setup.
    self.view.backgroundColor = [UIColor blueColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
