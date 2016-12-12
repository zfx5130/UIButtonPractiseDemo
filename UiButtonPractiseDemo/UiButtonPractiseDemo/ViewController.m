//
//  ViewController.m
//  UiButtonPractiseDemo
//
//  Created by admin on 16/12/8.
//  Copyright © 2016年 thomas. All rights reserved.
//

#import "ViewController.h"
#import "TextButtonViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)testButtonWasPressed:(UIButton *)sender {
    TextButtonViewController *textButtonViewController = [[TextButtonViewController alloc] init];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:textButtonViewController];
    [self presentViewController:navigationController animated:YES completion:nil];
}

@end
