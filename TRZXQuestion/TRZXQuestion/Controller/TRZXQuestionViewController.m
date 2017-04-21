//
//  TRZXQuestionViewController.m
//  TRZXQuestion
//
//  Created by 移动微 on 17/4/17.
//  Copyright © 2017年 移动微. All rights reserved.
//

#import "TRZXQuestionViewController.h"
#import "TRZXQuestionDefine.h"
#import "TRZXQuestionDetailViewController.h"

@interface TRZXQuestionViewController ()<UISearchBarDelegate,UISearchControllerDelegate,UITableViewDataSource,UITableViewDelegate>

//@property (nonatomic, strong) UIButton *askButton;

@end

@implementation TRZXQuestionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"问答列表";

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Action

/**
 提问按钮点击
 */
- (IBAction)askButtonDidClick:(id)sender {
    // 进入提问页面
}

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell;
    
    switch (indexPath.row) {
        case 0:{
            cell = [tableView dequeueReusableCellWithIdentifier:@"TRZXQuestionListCell1"];
        }
            break;
        case 1:{
            cell = [tableView dequeueReusableCellWithIdentifier:@"TRZXQuestionListCell2"];
        }
            break;
        case 2:{
            cell = [tableView dequeueReusableCellWithIdentifier:@"TRZXQuestionListCell3"];
        }
            break;
        default:
            break;
    }
    return cell;
}

#pragma mark - UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    CGFloat cellHeight = 0;
    switch (indexPath.row) {
        case 0:
            cellHeight = 320;
            break;
        case 1:
            cellHeight = 270;
            break;
        case 2:
            cellHeight = 180;
            break;
        default:
            break;
    }
    return cellHeight;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    TRZXQuestionDetailViewController *detailViewController = [[UIStoryboard storyboardWithName:@"TRZXQuestionController" bundle:nil] instantiateViewControllerWithIdentifier:@"TRZXQuestionDetailViewController"];
    
    [self.navigationController pushViewController:detailViewController animated:YES];
    
}

@end
