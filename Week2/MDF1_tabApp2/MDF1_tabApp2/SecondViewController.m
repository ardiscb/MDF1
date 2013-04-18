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
        self.title = NSLocalizedString(@"Top Movies", @"Top Movies");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    //table array
    movieTitleArray = [[NSMutableArray alloc] initWithObjects:@"The Cabin in the Woods", @"Beasts of the Southern Wild", @"Looper", @"Argo", @"Lincoln", @"Bernie", @"Searching for Sugar Man", @"The Dark Knight Rises", @"Silver Linings Playbook", @"Zero Dark Thirty", nil];
    //info array
    infoArray = [[NSMutableArray alloc] initWithObjects:@"Whedon and Drew Goddard co-wrote the most inventive horror/comedy since 'Scream,' saving their best for the explosive ending.", @"Director Benh Zeitlin and his band of merry filmmakers and actors infused their passion into this Louisiana Bayou fantasy/adventure/drama.", @"The details are wonderful in Rian Johnson's latest noirish adventure - this one profiling contract killers of the future.", @"Affleck continues to grow as a director in this crowd-pleasing free-the-hostages-with-a-fake-movie thriller.", @"Spielberg finds more drama examining behind-the-scene politics than he could muster with a warhorse in World War I. Daniel Day-Lewis delivers the best performance of the year.", @"Charming and quirky, Richard Linklater's profile of a small-town Texas murder is ultimately a testament to the community.", @"Better to know as little as possible going into this documentary, about a talented performer who never made it big in the states.", @"Christopher Nolan wraps up his epic superhero trilogy with an ambitious, bombastic finale.", @"David O. Russell's best film to date says a lot about sports fandom, family and heroic deeds in unexpected places. Also the year's best romance.", @"Gripping, informative and superbly acted, Kathryn Bigelow duplicates the success of 'The Hurt Locker' with the best film of the year.", nil];
    //database URL as string
    databaseURL = @"Database URL:\nhttp://search.ebscohost.com.oclc.fullsail.edu:81/login.aspx?direct=true&db=bwh&AN=84530336&site=ehost-live";
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
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if(cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
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
