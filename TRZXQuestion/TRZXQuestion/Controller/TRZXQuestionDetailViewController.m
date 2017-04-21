//
//  TRZXQuestionDetailViewController.m
//  TRZXQuestion
//
//  Created by 移动微 on 17/4/21.
//  Copyright © 2017年 移动微. All rights reserved.
//

#import "TRZXQuestionDetailViewController.h"
#import "TRZXQuestionDetailCell.h"


@interface TRZXQuestionDetailViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation TRZXQuestionDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TRZXQuestionDetailCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TRZXQuestionDetailCell" forIndexPath:indexPath];
    
    return cell;
}


#pragma mark - Table view data delegate
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 500;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}




@end
