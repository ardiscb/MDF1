//
//  FirstViewController.m
//  MDF1app4
//
//  Created by Courtney Ardis on 4/30/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"First", @"First");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    //create url - connection to
    url = [[NSURL alloc] initWithString:@"http://imdbapi.org/?ids=tt0116629%2Ctt0076759%2Ctt0084726%2Ctt0083866%2Ctt1650062%2Ctt1706593%2Ctt0083658%2Ctt0088247%2Ctt1276104%2Ctt0133093&type=xml&plot=simple&episode=1&lang=en-US&aka=simple&release=simple&business=0&tech=0"];
    //request connection from web service
    request = [[NSURLRequest alloc] initWithURL:url];
    //allocate mutable array - movies
    movies = [[NSMutableArray alloc] init];
    
    if(request != nil)
    {
        //log in information
        //request information
        
        //connect
        connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
        //create our mutableData object
        requestData = [NSMutableData data];
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
//did receive data
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    //check if we have valid data
    if(data != nil)
    {
        //add this data to existing requestData
        [requestData appendData:data];
    }
}
//this function is called when we have all the data from the request
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    //all information in requestData
    NSString *requestString = [[NSString alloc] initWithData:requestData encoding:NSASCIIStringEncoding];
    if(requestString != nil)
    {
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        //get the documents directory
        NSString *documentsDirectory = [paths objectAtIndex:0];
        if(documentsDirectory != nil)
        {
            //find the full path directory
            //where ever the file path is /slash/ index.html
            NSString *fullPath = [[NSString alloc] initWithFormat:@"%@/%@", documentsDirectory, @"movies.xml"];
            if (fullPath != nil)
            {
                //write information to file on system
                [requestData writeToFile:fullPath atomically:true];
                
                //create xml parser
                NSXMLParser *xmlParse = [[NSXMLParser alloc] initWithData:requestData];
                if(xmlParse != nil)
                {
                    //set delegate
                    [xmlParse setDelegate:self];
                    //kick off parsing
                    [xmlParse parse];
                }
            }
        }
        NSLog(@"%@", requestString);
    }
}

//when <element> is started
- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict
{
    // parse item
    if([elementName isEqualToString:@"rating"])
    {
        
        
        
    }
}
- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
{
    if([elementName isEqualToString:@"rating"])
    {
        
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
