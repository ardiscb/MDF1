//
//  ViewController.h
//  MDF1app1
//
//  MDF1 1304 Project 1
//  Created by Courtney Ardis on 4/9/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"
#import "CustomTableViewController.h"

@interface ViewController : UIViewController <UITableViewDelegate>//, DetailViewDelegate>
{
    IBOutlet UITableView *heroTable;
    IBOutlet UIButton *deleteBtn;
    IBOutlet UIButton *doneBtn;
    
    NSMutableArray *comicCharactersArray;
    NSMutableArray *comicTeamArray;
    NSMutableArray *infoArray;
}
-(IBAction)onClick:(id)sender;
@end
