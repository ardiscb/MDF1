//
//  FirstViewController.h
//  MDF1app4
//
//  Created by Courtney Ardis on 4/30/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController <NSURLConnectionDataDelegate, NSXMLParserDelegate>
{
    NSURLRequest *request;
    NSURL *url;
    NSURLConnection *connection;
    
    //receives data from request
    NSMutableData *requestData;
    
    //store parsed data
    NSMutableArray *movies;
}
@end
