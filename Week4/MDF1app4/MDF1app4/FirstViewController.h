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

@interface FirstViewController : UIViewController <NSURLConnectionDataDelegate, NSXMLParserDelegate, UITableViewDataSource, UITableViewDelegate, displayXML>
{
    id<displayXML> delegate;
    
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
-(NSString *)xmlString;

@property (nonatomic, retain) ItemClass *movieTitles;
@property (nonatomic, retain) NSMutableArray *movies;
@property NSString *requestString;
@property (strong) id<displayXML> delegate;

@end
