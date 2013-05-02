//
//  FirstViewController.h
//  MDF1app4
//
//  Created by Courtney Ardis on 4/30/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ItemClass;

@interface FirstViewController : UIViewController <NSURLConnectionDataDelegate, NSXMLParserDelegate, UITableViewDataSource, UITableViewDelegate>
{
    IBOutlet UITableView *uiTableView;
    
    NSURLRequest *request;
    NSURL *url;
    NSURLConnection *connection;
    
    //receives data from request
    NSMutableData *requestData;
    NSMutableArray *movies;
    
    //store parsed data
//    NSMutableArray *movies;
//        
//    NSString *title;
//    NSString *directors;
//    NSString *actors;
//    NSString *plot;
    
    NSMutableString *currentElement;
}

@property (nonatomic, retain) ItemClass *movieTitles;
@property (nonatomic, retain) NSMutableArray *movies;
//@property (nonatomic, strong)NSMutableData *requestData;

@end
