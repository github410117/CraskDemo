//
//  ViewController.m
//  MyCrackDemoApp
//
//  Created by 王林 on 2017/8/18.
//  Copyright © 2017年 王林. All rights reserved.
//

#import "ViewController.h"
#import "WLNextViewController.h"

@interface ViewController ()

@property (nonatomic,strong) UIButton * btn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.btn = [[UIButton alloc] initWithFrame:CGRectMake(50, 100, self.view.frame.size.width - 100, 50)];
    [self.view  addSubview:self.btn];
    [self.btn setTitle:@"Next" forState:UIControlStateNormal];
    self.btn.backgroundColor = [UIColor yellowColor];
    
    [self.btn addTarget:self action:@selector(nextBtnDidClicked:) forControlEvents:UIControlEventTouchUpInside];
    
    
}

- (void) nextBtnDidClicked:(UIButton *) sender {
    WLNextViewController * nextVC = [[WLNextViewController alloc] init];
    [self presentViewController:nextVC animated:YES completion:^{
        NSLog(@"finished pushing the viewcontroller");
    }];
    
}

@end
