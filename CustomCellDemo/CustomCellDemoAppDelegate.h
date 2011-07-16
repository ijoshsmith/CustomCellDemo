//
//  CustomCellDemoAppDelegate.h
//  CustomCellDemo
//
//  Created by Josh Smith on 6/20/11.
//  Copyright 2011 iJoshSmith. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DemoTableViewController;

@interface CustomCellDemoAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet DemoTableViewController *viewController;

@end
