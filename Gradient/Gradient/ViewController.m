//
//  ViewController.m
//  Gradient
//
//  Created by Victoria Bian on 1/6/15.
//  Copyright (c) 2015 Victoria Bian. All rights reserved.
//

#import "ViewController.h"
#import <SAMGradientView/SAMGradientView.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    SAMGradientView *gradient = [[SAMGradientView alloc] initWithFrame:self.view.bounds];
    gradient.gradientColors = @[[UIColor yellowColor], [UIColor purpleColor]];
    [self.view addSubview:gradient];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
