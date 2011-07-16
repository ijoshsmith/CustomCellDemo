//
//  DemoTableViewController.m
//  CustomCellDemo
//
//  Created by Josh Smith on 6/20/11.
//  Copyright 2011 iJoshSmith. All rights reserved.
//

#import "DemoTableViewController.h"
#import "DemoTableViewCell.h"
#import "Foo.h"

@implementation DemoTableViewController

static NSString *CellClassName = @"DemoTableViewCell";

@synthesize dataItems;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) 
    {
        cellLoader = [[UINib nibWithNibName:CellClassName bundle:[NSBundle mainBundle]] retain];
    }
    return self;
}

- (void)dealloc
{
    [cellLoader release];
    [super dealloc];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.dataItems count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView 
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Note: I set the cell's Identifier property in Interface Builder to DemoTableViewCell.
    DemoTableViewCell *cell = (DemoTableViewCell *)[tableView dequeueReusableCellWithIdentifier:CellClassName];
    if (!cell)
    {
        NSArray *topLevelItems = [cellLoader instantiateWithOwner:self options:nil];
        cell = [topLevelItems objectAtIndex:0];
    }
    cell.fooData = [dataItems objectAtIndex:indexPath.row];
    return cell;
}

@end
