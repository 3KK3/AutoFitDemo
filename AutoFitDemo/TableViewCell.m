//
//  TableViewCell.m
//  AutoFitDemo
//
//  Created by YZY on 2017/9/18.
//  Copyright © 2017年 YZY. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell
{
    __weak IBOutlet NSLayoutConstraint *_imgViewHeightConstraint;
    __weak IBOutlet UILabel *_firstLabel;
    __weak IBOutlet UIImageView *_imageView;
    __weak IBOutlet UILabel *_secondLabel;
}

- (void)setCellModel:(Model *)cellModel {
    _cellModel = cellModel;
    
    _firstLabel.text = cellModel.firstContent;
    
    if (cellModel.imgUrl.length <= 0) {
        _imageView.hidden = YES;
        _imgViewHeightConstraint.constant = 0;
    
    } else {
        _imageView.hidden = NO;
        _imgViewHeightConstraint.constant = 36.5;
    }
    _secondLabel.text = cellModel.secondContent;
    
}

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

}

@end
