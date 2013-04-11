//
//  ViewController.h
//  MDF1app1
//
//  Created by Courtney Ardis on 4/9/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate>
{
    IBOutlet UITableView *tableView;
    IBOutlet UIButton *deleteBtn;
    
    NSMutableArray *comicCharactersArray;
}
@end
