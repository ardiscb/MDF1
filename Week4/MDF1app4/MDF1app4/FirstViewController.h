//
//  FirstViewController.h
//  MDF1app4
//
//  Created by Courtney Ardis on 4/30/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"
@class ItemClass;

@interface FirstViewController : UIViewController <NSURLConnectionDataDelegate, NSXMLParserDelegate, UITableViewDataSource, UITableViewDelegate>
{
    IBOutlet UITableView *uiTableView;
    
    NSURLRequest *request;
    NSURL *url;
    NSURLConnection *connection;
    
    //receives data from request
    NSMutableData *requestData;
    NSString *requestString;
    
    NSMutableArray *movies;
    NSMutableString *currentElement;
}

@property (nonatomic, retain) ItemClass *movieTitles;
@property (nonatomic, retain) NSMutableArray *movies;
@property (nonatomic, retain) NSString *requestString;

@end
