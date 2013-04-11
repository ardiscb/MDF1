//
//  ViewController.m
//  MDF1app1
//
//  Created by Courtney Ardis on 4/9/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    comicCharactersArray = [[NSMutableArray alloc] initWithObjects:@"Dr. Strange", @"Human Torch", @"Rogue", @"The Thing", @"Gambit", @"Iron Fist", @"Luke Cage", @"Wolverine", @"Captain America", @"Spiderman", @"Iron Man", @"Hulk", @"Deadpool", @"Thor", @"Cyclops", @"Nova", @"Mr. Fantastic", @"Daredevil", @"The Vision", @"Mrs. Marvel", nil];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (void)viewDidAppear:(BOOL)animated
{
    
    [super viewDidAppear:animated];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)getInfo:(NSString*)heroName rowNumber:(NSInteger*)row
{
    //placeholder delegate method -- change variable names
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [comicCharactersArray count];
}
//on click of delete button
-(IBAction)onClick:(id)sender
{
    if(deleteBtn.enabled == true)
    {
        [tableView setEditing:true];
    }
    //figure out how to get out of edit mode if delete button is clicked while in edit mode(essentially when delete is clicked again)
//    else if()
//    {
//        [tableView setEditing:false];
//    }
}
- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewCellEditingStyleDelete;
}
- (void)tableView:(UITableView *)tableView2 commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    //In editing mode
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        NSLog(@"we want to delete row= %d name= %@", indexPath.row, [comicCharactersArray objectAtIndex:indexPath.row]);
        
        //Delete row from array
        [comicCharactersArray removeObjectAtIndex:indexPath.row];
        //Delete row from tableView
        [tableView2 deleteRowsAtIndexPaths:[NSMutableArray arrayWithObject:indexPath] withRowAnimation:true];
        
        NSLog(@"We have successfully deleted row = %d", indexPath.row);
    }
}
- (UITableViewCell *)tableView:(UITableView *)tableView3 cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView3 dequeueReusableCellWithIdentifier:CellIdentifier];
    if(cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.textLabel.text = (NSString *)[comicCharactersArray objectAtIndex:indexPath.row];
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //catches what row is selected
    NSLog(@"row=%d name=%@", indexPath.row, [comicCharactersArray objectAtIndex:indexPath.row]);
    
    //open second view
    DetailViewController *secondView = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
    if(secondView != nil)
    {
        secondView.delegate = self;
        [self presentViewController:secondView animated:true completion:nil];
    }

}
@end
