//
//  DetailViewController.h
//  MDF1app4
//
//  Created by Courtney Ardis on 5/2/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <UITextViewDelegate>
{
    IBOutlet UITextView *detailTextView;
}

-(IBAction)onClick:(id)sender;
@end
