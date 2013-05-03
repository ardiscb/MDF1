//
//  DetailViewController.m
//  MDF1app4
//
//  Created by Courtney Ardis on 5/2/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import "DetailViewController.h"
#import "ItemClass.h"
#import "FirstViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController
@synthesize movieTitles, plot, actors, titleMovie, title;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    self.titleMovie = movieInfo.title;
    detailTextView.text = [NSString stringWithFormat:@"Title: \n%@\nPlot: \n%@\nActors: \n%@\n", movieTitles.title,movieInfo.plot, movieInfo.actors];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(IBAction)onClick:(id)sender
{
    [self dismissViewControllerAnimated:true completion:nil];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
