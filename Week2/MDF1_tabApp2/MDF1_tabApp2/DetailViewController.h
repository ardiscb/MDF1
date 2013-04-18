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
    IBOutlet UIButton *backBtn;
}

-(IBAction)onClick:(id)sender;

@property IBOutlet UILabel *movieTitleLabel;
@property IBOutlet UILabel *reviewLabel;
@end
