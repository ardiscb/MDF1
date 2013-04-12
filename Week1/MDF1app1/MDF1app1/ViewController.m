//
//  ViewController.m
//  MDF1app1
//
//  Created by Courtney Ardis on 4/9/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"
#import "CustomTableViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //hide done button at load
    doneBtn.hidden = true;
    comicCharactersArray = [[NSMutableArray alloc] initWithObjects:@"Dr. Strange", @"Human Torch", @"Rogue", @"The Thing", @"Gambit", @"Iron Fist", @"Luke Cage", @"Wolverine", @"Captain America", @"Spiderman", @"Iron Man", @"Hulk", @"Deadpool", @"Thor", @"Cyclops", @"Nova", @"Mr. Fantastic", @"Daredevil", @"The Vision", @"Mrs. Marvel", nil];
    comicTeamArray = [[NSMutableArray alloc] initWithObjects:@"Marvel", @"Marvel", @"Marvel", @"Marvel", @"Marvel", @"Marvel", @"Marvel", @"Marvel", @"Marvel", @"Marvel", @"Marvel", @"Marvel", @"Marvel", @"Marvel", @"Marvel", @"Marvel", @"Marvel", @"Marvel", @"Marvel", @"Marvel", nil];
    infoArray = [[NSMutableArray alloc] initWithObjects:@"Real name: Dr. Steven Strange\nFormerly:Heart Surgeon", @"Real name: Johnny Storm\nFormerly:Unemployeed rich boy", @"Real Name:Anna Marie\nFormerly:Student", @"Real name:Benjamin Grimm\nFormerly: Pilot", @"Real name: Remy LaBeau\nFormerly:Theif", @"Real name: Danny Rand\nFormerly: Son of a rich socialite", @"Real name: Luke Cage\nFormerly: Gang member", @"Real name: James Howlett III\nFormerly: Kid", @"Real name: Steve Rogers\nFormerly: Graduate pursuing military ambitions", @"Real name: Peter Parker\nFormerly: Amateur photographer", @"Real name: Anthony Stark\nFormerly: Genius, Millionaire, Playboy, Philanthorpist", @"Real name: Bruce Banner\nFormerly: Research scientist", @"Real name: Wade Wilson\nFormerly: Mercenary", @"Real name: Thor Odenson\nFormerly: God, always has been and always will be", @"Real name: Scott Summers\nFormerly:Student", @"Real name: Richard Rider\nFormerly:Student", @"Real name: Reed Richards\nFormerly: Research Scientist", @"Real name: Matt Murdock\nFormerly: Defense Attorney", @"Real name: The Vision\nFormerly: Synthetic lifeform, always has been and always will be", @"Real name: Carol Danvers\nFormerly: Member of the United States Airforce", nil];
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
//-(void)getInfo:(NSString*)heroName rowNumber:(NSInteger*)row
//{
//    //placeholder delegate method -- change variable names
//}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [comicCharactersArray count];
}

//on click of delete button
-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    //if delete button is clicked
    if(button.tag == 0)
    {
        //display done button
        doneBtn.hidden = false;
        //in edit mode
        [heroTable setEditing:true];

    }
    //if done button is clicked
    else if(button.tag == 1)
    {
        //get out edit mode
        [heroTable setEditing:false];
        //hide done button
        doneBtn.hidden = true;
    }

}
- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewCellEditingStyleDelete;
}
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    //In editing mode
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        NSLog(@"we want to delete row= %d name= %@", indexPath.row, [comicCharactersArray objectAtIndex:indexPath.row]);
        
        //Delete row from array
        [comicCharactersArray removeObjectAtIndex:indexPath.row];
        //Delete row from tableView
        [heroTable deleteRowsAtIndexPaths:[NSMutableArray arrayWithObject:indexPath] withRowAnimation:true];
        
        NSLog(@"We have successfully deleted row = %d", indexPath.row);
    }
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    CustomTableViewController *cell = [heroTable dequeueReusableCellWithIdentifier:CellIdentifier];
    if(cell == nil)
    {
        //cell = [[CustomTableViewController alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];

        NSArray* views = [[NSBundle mainBundle] loadNibNamed:@"CustomCellView" owner:nil options:nil];
        for(UIView *view in views)
        {
            if([view isKindOfClass:[CustomTableViewController class]])
            {
                cell = (CustomTableViewController*)view;
                //add arrays to rows
                cell.characterName.text = (NSString *)[comicCharactersArray objectAtIndex:indexPath.row];
                cell.teamLabel.text = (NSString *)[comicTeamArray objectAtIndex:indexPath.row];
            }
        }
    }
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
        //secondView.delegate = self;
        [self presentViewController:secondView animated:true completion:nil];
        secondView.characterLabel.text = [comicCharactersArray objectAtIndex:indexPath.row];
        secondView.team.text = [comicTeamArray objectAtIndex:indexPath.row];
        secondView.info.text = [infoArray objectAtIndex:indexPath.row];
    }
    

}
@end
