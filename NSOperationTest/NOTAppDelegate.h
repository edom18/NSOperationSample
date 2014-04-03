//
//  NOTAppDelegate.h
//  NSOperationTest
//
//  Created by 比留間 和也 on 2014/04/02.
//  Copyright (c) 2014年 比留間 和也. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "NOTClient.h"

@interface NOTAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) NOTClient *client;

@end
