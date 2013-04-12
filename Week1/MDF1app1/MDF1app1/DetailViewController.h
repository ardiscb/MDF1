//
//  DetailViewController.h
//  MDF1app1
//
//  Created by Courtney Ardis on 4/10/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
{
    IBOutlet UIButton *backBtn;
}
-(IBAction)onClick:(id)sender;

@property IBOutlet UILabel *characterLabel;
@property IBOutlet UILabel *team;
@property IBOutlet UILabel *info;
@end


