//
//  User.h
//  AddressBook
//
//  Created by iOS-School-1 on 25.04.17.
//  Copyright © 2017 iOS-School-1. All rights reserved.
//

#import <Foundation/Foundation.h>
@class UIView;
@class UIImageView;

@interface User : NSObject

@property (copy, nonatomic) NSString* firstName;
@property (copy, nonatomic) NSString* lastName;
@property (copy, nonatomic) NSString* info;
@property (strong, nonatomic) UIView* avatar;

- (id)initWithFirstName:(NSString*)firstName lastName:(NSString*)lastName info:(NSString*)info;

@end
