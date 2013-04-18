//
//  SecondViewController.m
//  MDF1_tabApp2
//
//  Created by Courtney Ardis on 4/17/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import "SecondViewController.h"
#import "DetailViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        //add title to tab and nav bar
        self.title = NSLocalizedString(@"Top 5", @"Top 5");
        //add image to tab
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    //table array
    movieTitleArray = [[NSMutableArray alloc] initWithObjects:@"Dawn of the Dead(1979)", @"Day of the Dead(1985)", @"28 Days Later(2003)", @"Dawn of the Dead(2004)", @"Shaun of the Dead(2004)", nil];
    //info array
    infoArray = [[NSMutableArray alloc] initWithObjects:@"Legendary horror director George A. Romero took a cleaver to '70s consumerism--and a zombie's head--in his mall-set undead epic.", @"Many rate Romero's genre-creating Night of the Living Dead as superior to Day, but Day of the Dead is Walking Dead creator Robert Kirkman's favorite zombie movie--and one of ours.", @"You can argue until you're blue in the face that this terrifying tale of virus-infected ghouls is not technically a zombie film. Though you will then run the risk of being shot in the head.", @"In Zack Snyder's underrated gorefest, sprinting zombies terrorize Sarah Polley, Ving Rhames, and a hilarious unpleasent Ty Burrell.", @"Director Edgar Wright's loving homeage to the Romero oeuvre was also the best horror-comedy since An American Werewolf in London.", nil];
    //database URL as string
    databaseURL = @"Database URL:\nhttp://search.ebscohost.com.oclc.fullsail.edu:81/login.aspx?direct=true&db=a9h&AN=57830081&site=ehost-live";
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

//add rows to table view
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [movieTitleArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //create cell identifier
    static NSString *CellIdentifier = @"Cell";
    
    //create instance of tableView
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if(cell == nil)
    {
        //create instance of tableView cell
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    //add text to cell
    cell.textLabel.text = (NSString *)[movieTitleArray objectAtIndex:indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //catches what row is selected
    NSLog(@"row=%d name=%@", indexPath.row, [movieTitleArray objectAtIndex:indexPath.row]);
    
    //open second view
    DetailViewController *secondTableView = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
    if(secondTableView != nil)
    {
        [self presentViewController:secondTableView animated:true completion:nil];
        //add movie title to detail view
        secondTableView.movieTitleLabel.text = [movieTitleArray objectAtIndex:indexPath.row];
        //add info to detail view
        secondTableView.reviewLabel.text = [infoArray objectAtIndex:indexPath.row];
        //add database URL to detail view
        secondTableView.databaseLabel.text = databaseURL;
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
