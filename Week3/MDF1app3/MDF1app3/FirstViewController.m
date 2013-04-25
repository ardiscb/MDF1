//
//  FirstViewController.m
//  MDF1app3
//
//  Created by Courtney Ardis on 4/23/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import "FirstViewController.h"
#import "DetailViewController.h"
#import "BusinessManager.h"
#import "ShopInfoClass.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Top 10 Shops", @"Top 10 Shops");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    //hide doneBtn on load
    doneBtn.hidden = true;
    
    ShopInfoClass *shop1 = [[ShopInfoClass alloc] initWithTitle:@"Atomic Books" loca:CLLocationCoordinate2DMake(39.331303f, -76.635069f)];
    ShopInfoClass *shop2 = [[ShopInfoClass alloc] initWithTitle:@"Forbidden Planet" loca:CLLocationCoordinate2DMake(40.733419f, -73.990701f)];
    ShopInfoClass *shop3 = [[ShopInfoClass alloc] initWithTitle:@"Comic Relief" loca:CLLocationCoordinate2DMake(34.063540f, -118.368764f)];
    ShopInfoClass *shop4 = [[ShopInfoClass alloc] initWithTitle:@"Bergen Street Comics" loca:CLLocationCoordinate2DMake(40.680749f, -73.975833f)];
    ShopInfoClass *shop5 = [[ShopInfoClass alloc] initWithTitle:@"Secret Headquarters" loca:CLLocationCoordinate2DMake(34.091366f, -118.279131f)];
    ShopInfoClass *shop6 = [[ShopInfoClass alloc] initWithTitle:@"Arcane Comics" loca:CLLocationCoordinate2DMake(47.671304f, -122.376229f)];
    ShopInfoClass *shop7 = [[ShopInfoClass alloc] initWithTitle:@"Austin Books & Comics" loca:CLLocationCoordinate2DMake(30.318620f, -97.731180f)];
    ShopInfoClass *shop8 = [[ShopInfoClass alloc] initWithTitle:@"Quimby's" loca:CLLocationCoordinate2DMake(41.910718f, -87.674763f)];
    ShopInfoClass *shop9 = [[ShopInfoClass alloc] initWithTitle:@"Floating World Comics" loca:CLLocationCoordinate2DMake(45.523800f, -122.674427f)];
    ShopInfoClass *shop10 = [[ShopInfoClass alloc] initWithTitle:@"The Laughing Ogre" loca:CLLocationCoordinate2DMake(40.048936f, -83.019979f)];
    
    //create instance of business manager
    [BusinessManager CreateInstance];
    
    //Get instance
    BusinessManager *businessManager = [BusinessManager GetInstance];
    if(businessManager != nil)
    {
        NSMutableArray *shops = businessManager.comicShops;
        if(shops != nil)
        {
            [shops addObject:shop1];
            [shops addObject:shop2];
            [shops addObject:shop3];
            [shops addObject:shop4];
            [shops addObject:shop5];
            [shops addObject:shop6];
            [shops addObject:shop7];
            [shops addObject:shop8];
            [shops addObject:shop9];
            [shops addObject:shop10];
        }
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //create instance of business manager
    [BusinessManager CreateInstance];
    //get instance
    BusinessManager *businessManager = [BusinessManager GetInstance];
    NSMutableArray *shops = businessManager.comicShops;
    
    return [shops count];
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
    //create instance of business manager
    [BusinessManager CreateInstance];
    //get instance
    BusinessManager *businessManager = [BusinessManager GetInstance];
    NSMutableArray *shops = businessManager.comicShops;
    
    //add text to cell
    cell.textLabel.text = [[shops objectAtIndex:indexPath.row]shopName];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //create instance of business manager
    [BusinessManager CreateInstance];
    //get instance
    BusinessManager *businessManager = [BusinessManager GetInstance];
    NSMutableArray *shops = businessManager.comicShops;
    
    //open detail view
    DetailViewController *detailView = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
    if(detailView != nil)
    {
        //add business name to view
        detailView.comicShopName = [[shops objectAtIndex:indexPath.row]shopName];
        //detailView.comicShopName = [[shops objectAtIndex:indexPath.row]shopName];
        //add latitude and longitude to view
        detailView.shopLocation = [[shops objectAtIndex:indexPath.row]exactLocation];
        [self presentViewController:detailView animated:TRUE completion:nil];
    }
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(editingStyle == UITableViewCellEditingStyleDelete)
    {
        //create instance of business manager
        [BusinessManager CreateInstance];
        //get instance
        BusinessManager *businessManager = [BusinessManager GetInstance];
        NSMutableArray *shops = businessManager.comicShops;
        
        //delete row from array
        [shops removeObjectAtIndex:indexPath.row];
        //delete row from table
        [businessTableView deleteRowsAtIndexPaths:[NSMutableArray arrayWithObject:indexPath] withRowAnimation:true];
    }
}

-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    //if delete button is clicked
    if(button.tag == 0)
    {
        //display done button
        doneBtn.hidden = false;
        //in edit mode
        [businessTableView setEditing:true];
        
    }
    //if done button is clicked
    else if(button.tag == 1)
    {
        //get out edit mode
        [businessTableView setEditing:false];
        //hide done button
        doneBtn.hidden = true;
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
