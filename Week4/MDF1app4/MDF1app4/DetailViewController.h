//
//  DetailViewController.h
//  MDF1app4
//
//  Created by Courtney Ardis on 5/2/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ItemClass;

@interface DetailViewController : UIViewController <UITextViewDelegate>
{
    IBOutlet UITextView *detailTextView;
    
    ItemClass *movieInfo;
    NSString *titleMovie;
    NSString *plot;
    NSString *actors;
}

@property (nonatomic, retain) NSString *titleMovie;
@property (nonatomic, retain) NSString *plot;
@property (nonatomic, retain) NSString *actors;
@property (nonatomic, retain) ItemClass *movieTitles;


-(IBAction)onClick:(id)sender;
@end
