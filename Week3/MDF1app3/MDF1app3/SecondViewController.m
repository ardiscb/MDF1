//
//  SecondViewController.m
//  MDF1app3
//
//  Created by Courtney Ardis on 4/23/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import "SecondViewController.h"
#import "BusinessManager.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Second", @"Second");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    //create instance of business manager
    [BusinessManager CreateInstance];
    
    //Get instance
    BusinessManager *businessManager = [BusinessManager GetInstance];
    if(businessManager != nil)
    {
        //example code
        //[businessManager otherMethod];
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
