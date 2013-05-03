//
//  SecondViewController.h
//  MDF1app4
//
//  Created by Courtney Ardis on 4/30/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol displayXML <NSObject>

@required
-(NSString *)xmlString;

@end
@interface SecondViewController : UIViewController <UITextViewDelegate>
{
    IBOutlet UITextView *xmlTextView;
    id<displayXML> delegate;
}
@property (nonatomic, copy) NSString *requestString;
@property (strong) id<displayXML> delegate;
@end
