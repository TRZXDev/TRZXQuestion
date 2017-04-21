//
//  ViewController.m
//  TRZXQuestion
//
//  Created by 移动微 on 17/4/17.
//  Copyright © 2017年 移动微. All rights reserved.
//

#import "ViewController.h"
#import "TRZXQuestionViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)tapButtonClick:(UIButton *)sender {
    // 进入问答页面
     TRZXQuestionViewController *questionViewController = [[UIStoryboard storyboardWithName:@"TRZXQuestionController" bundle:nil] instantiateViewControllerWithIdentifier:@"TRZXQuestionViewController"];
    
    [self.navigationController pushViewController:questionViewController animated:YES];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
