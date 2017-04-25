//
//  AdressBookViewController.m
//  AddressBook
//
//  Created by iOS-School-1 on 25.04.17.
//  Copyright © 2017 iOS-School-1. All rights reserved.
//

#import "AdressBookViewController.h"
#import "AdressBookTableView.h"
#import "AddressBookCell.h"
#import "User.h"
#import <MBfaker/MBFaker.h>

@interface AdressBookViewController () <UITableViewDelegate, UITableViewDataSource>

@property (copy, nonatomic) NSArray *usersArray;

@end

@implementation AdressBookViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = UIColor.whiteColor;
    
    [self generateFakeUsers];
    
    CGRect bounds = self.view.bounds;
    AdressBookTableView *addressTableView = [[AdressBookTableView alloc] initWithFrame:bounds];
    addressTableView.delegate = self;
    addressTableView.dataSource = self;
    addressTableView.tableFooterView = [UIView new];
    
    [self.view addSubview:addressTableView];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.usersArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"AddressBookCell";
    AddressBookCell *addressCell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if(!addressCell) {
        addressCell = [[AddressBookCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    addressCell.firstNameLabel.text = ((User *)self.usersArray[indexPath.row]).firstName;
    addressCell.lastNameLabel.text = ((User *)self.usersArray[indexPath.row]).lastName;
    [addressCell.imageView.c addSubview: ((User *)self.usersArray[indexPath.row]).avatar];
    
    return addressCell;
}


#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 120.f;
}

#pragma mark - User Generator

- (void)generateFakeUsers {
    NSMutableArray *users = [NSMutableArray arrayWithCapacity:100];
    
    for(NSInteger i = 0; i < 100; i++) {
        NSString *fullName = [MBFakerName name];
        NSArray *myArray = [fullName componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@" "]];
        NSString *fName = myArray[0];
        NSString *lName= myArray[1];
        NSString *info = fullName;
        
        User *user = [[User alloc] initWithFirstName:fName lastName:lName info:info];
        [users addObject:user];
    }
    
    self.usersArray = users;
}

@end
// register class
