//
//  FirstViewController.m
//  MDF1_tabApp2
//
//  Created by Courtney Ardis on 4/17/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondNavViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Zombies", @"Zombies");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    self.navigationController.navigationBar.tintColor = [UIColor blackColor];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)onClick:(id)sender
{
    SecondNavViewController *secondNavView = [[SecondNavViewController alloc] initWithNibName:@"SecondNavViewController" bundle:nil];
    if(secondNavView != nil)
    {
        //move to second nav view
        [self.navigationController pushViewController:secondNavView animated:true];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
