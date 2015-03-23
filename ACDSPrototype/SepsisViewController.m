//
//  SepsisViewController.m
//  ACDSPrototype
//
//  Created by abruzzim on 3/16/15.
//  Copyright (c) 2015 Mario Abruzzi. All rights reserved.
//

#import "SepsisViewController.h"

@interface SepsisViewController ()

@end

@implementation SepsisViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        NSLog(@"%%SepsisViewController-I-DEBUG, View controller initialized.");
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Set the background color of the view.
    self.view.backgroundColor = [UIColor purpleColor];
    NSLog(@"%%SepsisViewController-I-DEBUG, 'backgroundColor' property set.");
    // Create an image container to display an image.
    UIImageView *sepsisFlowChart = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Sepsis Flowchart 3"]];
    // Scale content to fit in the view's frame, while preserving the original aspect ratio.
    [sepsisFlowChart setContentMode:UIViewContentModeScaleAspectFill];
    // Set the frame, which describes the view's location and size in its superview's coordinate system.
    sepsisFlowChart.frame = self.view.frame;
    // Add the image view as a subview.
    [self.view addSubview:sepsisFlowChart];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
