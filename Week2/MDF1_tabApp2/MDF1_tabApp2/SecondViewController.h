//
//  SecondViewController.h
//  MDF1_tabApp2
//
//  Created by Courtney Ardis on 4/17/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
    IBOutlet UITableView *movieTableView;
    
    NSMutableArray *movieTitleArray;
    NSMutableArray *infoArray;
}
@end
