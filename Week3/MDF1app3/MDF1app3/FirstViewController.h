//
//  FirstViewController.h
//  MDF1app3
//
//  Created by Courtney Ardis on 4/23/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface FirstViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
    IBOutlet UITableView *businessTableView;
    IBOutlet UIScrollView *scrollView;
    
    IBOutlet UIButton *deleteBtn;
    IBOutlet UIButton *doneBtn;
}

-(IBAction)onClick:(id)sender;
@end
