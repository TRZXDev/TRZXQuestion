//
//  TRZXQuestionListCell3.h
//  TRZXQuestion
//
//  Created by 移动微 on 17/4/18.
//  Copyright © 2017年 移动微. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TRZXQuestionListCell3 : UITableViewCell

/**
 提问者名称
 */
@property (strong, nonatomic) IBOutlet UILabel *userNameLabel;

/**
 提问者头像
 */
@property (strong, nonatomic) IBOutlet UIImageView *userHaedImageView;

/**
 提问者简介
 */
@property (strong, nonatomic) IBOutlet UILabel *userIntroductionLabel;

/**
 问题
 */
@property (strong, nonatomic) IBOutlet UILabel *questionLabel;

/**
 问题提问时间
 */
@property (strong, nonatomic) IBOutlet UILabel *questionAskTimeLabel;

@end
