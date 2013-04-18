//
//  ThirdViewController.m
//  MDF1_tabApp2
//
//  Created by Courtney Ardis on 4/17/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import "ThirdViewController.h"
#import "aboutClass.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        //add title to tab and nav bar
        self.title = NSLocalizedString(@"About", @"About");
        //add image to tab
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    //create mutable array for details
    detailArray = [[NSMutableArray alloc] init];
    //create instance of aboutClass
    aboutClass *developDetails = [[aboutClass alloc] initWithDetails:@"My name is Courtney Ardis. I have enjoyed programming applications for quite some time now. I currently work as a User Support Associate, but hope to one day work for myself or a prosperous company as a developer."];
    //add details to array
    [detailArray addObject:developDetails];
    //pass data to view
    aboutLabel.text = developDetails.details;
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
