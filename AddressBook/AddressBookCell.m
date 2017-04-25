//
//  AddressBookCell.m
//  AddressBook
//
//  Created by iOS-School-1 on 25.04.17.
//  Copyright © 2017 iOS-School-1. All rights reserved.
//

#import "AddressBookCell.h"
#import "Masonry.h"

@implementation AddressBookCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        self.firstNameLabel = [[UILabel alloc] init];
        self.firstNameLabel.textAlignment = NSTextAlignmentLeft;
        self.firstNameLabel.font = [UIFont systemFontOfSize:14];
        
        self.lastNameLabel = [[UILabel alloc] init];
        self.lastNameLabel.textAlignment = NSTextAlignmentLeft;
        self.lastNameLabel.font = [UIFont systemFontOfSize:14];
        
        self.avatarImageView = [[UIImageView alloc] init];
        
        [self.contentView addSubview:self.firstNameLabel];
        [self.contentView addSubview:self.lastNameLabel];
        [self.contentView addSubview:self.avatarImageView];
        
        UIView *superview = self.contentView;
        
        [self.avatarImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.height.equalTo(@(100));
            make.width.equalTo(@(100));
            
            make.centerY.equalTo(@((self.contentView.center.y / 2) - 10));
            make.left.equalTo(superview).with.offset(5);
        }];
        
        [self.firstNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.height.equalTo(@(15));
            
            make.left.equalTo(self.avatarImageView.mas_right).with.offset(10);
            make.right.equalTo(superview).with.offset(-10);
            // make.top.equalTo(superview).with.offset(15);
            make.centerY.equalTo(@((self.contentView.center.y / 2) - 25));
        }];
        
        [self.lastNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.height.equalTo(@(15));
            
            make.left.equalTo(self.avatarImageView.mas_right).with.offset(10);
            make.right.equalTo(superview).with.offset(-10);
            // make.top.equalTo(self.firstNameLabel.mas_bottom).with.offset(5);
            make.centerY.equalTo(@((self.contentView.center.y / 2) - 5));
        }];
    }
    
    return self;
}

- (BOOL)needsUpdateConstraints {
    return YES;
}


- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
