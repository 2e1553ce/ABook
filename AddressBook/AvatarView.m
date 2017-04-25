//
//  AvatarView.m
//  AddressBook
//
//  Created by iOS-School-1 on 25.04.17.
//  Copyright © 2017 iOS-School-1. All rights reserved.
//

#import "AvatarView.h"
#import "Masonry.h"

@implementation AvatarView

- (id)initWithInitials:(NSString*)initials {
    self = [super init];
    
    if(self) {
        
        /*
        CAShapeLayer *borderLayer = [CAShapeLayer layer];
        [borderLayer setPath:[[UIBezierPath bezierPathWithOvalInRect:CGRectMake(50, 50, 100, 100)] CGPath]];
        
        [borderLayer setStrokeColor:[UIColor.blackColor CGColor]];
        [borderLayer setFillColor:[UIColor.clearColor CGColor]];
        
        [self.layer addSublayer:borderLayer];
         */
        
        self.frame = CGRectMake(0.f, 0.f, 100.f, 100.f);
        self.layer.cornerRadius = 50.f;
        self.layer.borderWidth = 5.0f;
        self.alpha = 0.5f;
        self.backgroundColor = UIColor.redColor;
        
        self.initialsLabel = [UILabel new];
        self.initialsLabel.text = initials;
        [self addSubview:self.initialsLabel];
        
        [self.initialsLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.height.equalTo(@(40));
            make.width.equalTo(@(40));
            
            make.centerY.equalTo(@((self.center.y / 2) - 25));
            make.centerX.equalTo(@((self.center.y / 2) - 15));
        }];

    }
    
    return  self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
