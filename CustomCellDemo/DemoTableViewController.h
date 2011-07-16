//
//  DemoTableViewController.h
//  CustomCellDemo
//
//  Created by Josh Smith on 6/20/11.
//  Copyright 2011 iJoshSmith. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DemoTableViewController : UITableViewController {
    UINib *cellLoader;
}

@property (nonatomic, retain) NSArray *dataItems;

@end
