//
//  TRZXQuestionDetailCell.m
//  TRZXQuestion
//
//  Created by 移动微 on 17/4/21.
//  Copyright © 2017年 移动微. All rights reserved.
//

#import "TRZXQuestionDetailCell.h"
#import "TRZXQuestionDetailAnswerCell.h"

@interface TRZXQuestionDetailCell()<UITableViewDelegate,UITableViewDataSource>

/**
 提问者头像
 */
@property (strong, nonatomic) IBOutlet UIImageView *userHaedImageView;

/**
 提问者名称
 */
@property (strong, nonatomic) IBOutlet UILabel *userNameLabel;

/**
 提问者简介
 */
@property (strong, nonatomic) IBOutlet UILabel *userIntroductionLabel;

/**
 点赞按钮
 */
@property (strong, nonatomic) IBOutlet UIButton *supportLabel;

/**
 问题
 */
@property (strong, nonatomic) IBOutlet UILabel *questionLabel;

/**
 语音播放时展示的动画
 */
@property (strong, nonatomic) IBOutlet UIImageView *voiceDisplayImageView;

/**
 问题提问时间
 */
@property (strong, nonatomic) IBOutlet UILabel *questionAskTimeLabel;

/**
 问题语音时间
 */
@property (strong, nonatomic) IBOutlet UILabel *questionVoiceTimeLabel;

/**
 回答者列表
 */
@property (strong, nonatomic) IBOutlet UITableView *detailAnswerTableView;

@end

@implementation TRZXQuestionDetailCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

#pragma mark - Action
/// 问题播放按钮点击
- (IBAction)questionPlayButtonDidClick:(UIButton *)sender {
    
}


#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TRZXQuestionDetailAnswerCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TRZXQuestionDetailAnswerCell" forIndexPath:indexPath];
    
    return cell;
}


@end
