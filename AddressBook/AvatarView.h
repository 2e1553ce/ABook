//
//  AvatarView.h
//  AddressBook
//
//  Created by iOS-School-1 on 25.04.17.
//  Copyright © 2017 iOS-School-1. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AvatarView : UIView

@property (strong, nonatomic) UILabel *initialsLabel;

- (id)initWithInitials:(NSString*)initials;

@end
