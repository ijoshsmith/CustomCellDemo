// CustomCellDemo
// Josh Smith - July 16, 2011

This document explains how to create a custom table view cell. 
The example also supports having the custom cells recycled by the UITableView, which can drastically improve memory consumption for long lists.

1) Add a new ViewController file with a XIB but change the base class from UIViewController to UITableViewCell.

2) Open the new XIB file and make the File's Owner the UITableViewController class that will be creating the custom cell.

3) Remove the File's Owner's link to the View outlet.

4) Delete the View in the XIB, add a TableViewCell to the canvas, change cell's Class to your custom cell class.

5) Select the Cell on the design surface in IB, open the properties pane, and set the Identifier field to the name of your cell class.

6) Assign Outlets and Actions to the Table View Cell object in IB, not File's Owner like you normally would.

7) Use UINib to create the XIB files for you when creating instances of table cells. UINib is more efficient than [[NSBundle mainBundle] loadNibNamed:…]

// In DemoTableViewController.h
@interface DemoTableViewController : UITableViewController 
{
  UINib *cellLoader;
}

@property (nonatomic, retain) NSArray *dataItems;

@end


// In DemoTableViewController.m
static NSString *CellClassName = @"DemoTableViewCell";

- (id)initWithStyle:(UITableViewStyle)style
{
  self = [super initWithStyle:style];
  if (self)
  {
    cellLoader = [[UINib nibWithNibName:CellClassName bundle:[NSBundle mainBundle]] retain];
  }
  return self;
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
