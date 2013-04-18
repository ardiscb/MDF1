//
//  SecondNavViewController.m
//  MDF1_tabApp2
//
//  Created by Courtney Ardis on 4/17/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import "SecondNavViewController.h"
#import "ThirdNavViewController.h"

@interface SecondNavViewController ()

@end

@implementation SecondNavViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        //add title to tab and nav bar
         self.title = NSLocalizedString(@"Survival", @"Survival");
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

-(IBAction)onClick:(id)sender
{
    //create instance of thirdNavView
    ThirdNavViewController *thirdNavView = [[ThirdNavViewController alloc] initWithNibName:@"ThirdNavViewController" bundle:nil];
    if(thirdNavView != nil)
    {
        //move to third nav view
        [self.navigationController pushViewController:thirdNavView animated:true];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
