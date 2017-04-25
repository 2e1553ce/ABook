//
//  User.m
//  AddressBook
//
//  Created by iOS-School-1 on 25.04.17.
//  Copyright © 2017 iOS-School-1. All rights reserved.
//

#import "User.h"
#import "AvatarView.h"

#import <UIKit/UIKit.h>

@implementation User

- (id)initWithFirstName:(NSString*)firstName lastName:(NSString*)lastName info:(NSString*)info {
    self = [super init];
    
    if(self) {
        _firstName = firstName;
        _lastName = lastName;
        _info = info;
        
        NSString *initials = [NSString stringWithFormat:@"%@%@",[firstName substringToIndex:1], [lastName substringToIndex:1]];
        initials = [initials uppercaseString];
        
        AvatarView *view = [[AvatarView alloc] initWithInitials: initials];
        _avatar = view;
    }
    
    return self;
}

@end
