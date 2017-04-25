//
//  AppDelegate.m
//  AddressBook
//
//  Created by iOS-School-1 on 25.04.17.
//  Copyright © 2017 iOS-School-1. All rights reserved.
//

#import "AppDelegate.h"

#import "AdressBookViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
   
    self.window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
    
    AdressBookViewController *addressVC = [AdressBookViewController new];
    
    UINavigationController *navVC = [UINavigationController new];
    navVC.viewControllers = @[addressVC];
    
    self.window.rootViewController = navVC;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
