//
//  CustomTableViewController.h
//  MDF1app1
//
//  Created by Courtney Ardis on 4/11/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewController : UITableViewCell
{
    IBOutlet UILabel *characterName;
    IBOutlet UILabel *teamLabel;
}
@property (nonatomic, strong)UILabel *characterName;
@property (nonatomic, strong)UILabel *teamLabel;
@end
