//
//  TextButtonViewController.m
//  UiButtonPractiseDemo
//
//  Created by admin on 16/12/8.
//  Copyright © 2016年 thomas. All rights reserved.
//

#import "TextButtonViewController.h"

@interface TextButtonViewController ()

@property (strong, nonatomic) IBOutlet UIButton *testButtonOne;
@property (strong, nonatomic) IBOutlet UIButton *testButtonTwo;
@property (strong, nonatomic) IBOutlet UIButton *testButtonThree;
@property (strong, nonatomic) IBOutlet UIButton *testButtonFour;


@end

@implementation TextButtonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupViews];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)setupViews {
    self.title = @"测试";
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithTitle:@"返回"
                                                                   style:UIBarButtonItemStyleDone
                                                                  target:self
                                                                  action:@selector(dismiss)];
    self.navigationItem.leftBarButtonItem = leftButton;
}

- (void)dismiss {
    [self dismissViewControllerAnimated:YES completion:nil];
}



@end
