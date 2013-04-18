//
//  DetailViewController.h
//  MDF1_tabApp2
//
//  Created by Courtney Ardis on 4/17/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
{
}

@property IBOutlet UILabel *movieTitleLabel;
@property IBOutlet UILabel *reviewLabel;
@property IBOutlet UILabel *databaseLabel;

-(IBAction)onClick:(id)sender;
@end
