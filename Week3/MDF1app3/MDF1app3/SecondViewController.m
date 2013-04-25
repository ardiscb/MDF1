//
//  SecondViewController.m
//  MDF1app3
//
//  Created by Courtney Ardis on 4/23/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import "SecondViewController.h"
#import "BusinessManager.h"
#import "MyMapAnnotations.h"
#import "DetailViewController.h"
#import "ShopInfoClass.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Second", @"Second");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    //create instance of business manager
    [BusinessManager CreateInstance];
    
    //Get instance
    BusinessManager *businessManager = [BusinessManager GetInstance];
    if(businessManager != nil)
    {
        //create default span and zoom level
        MKCoordinateSpan span;
        span.latitudeDelta = 27.0f;
        span.longitudeDelta = 27.0f;
        
        CLLocationCoordinate2D location;
        location.latitude = 41.508577;
        location.longitude = -98.523438;
        
        //set location and span to the region of map shown on screen
        MKCoordinateRegion region;
        region.center = location;
        region.span = span;
        
        //add region to mapView
        secondMapView.region = region;

    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated
{
    //create instance of business manager
    [BusinessManager CreateInstance];
    //get instance
    BusinessManager *businessManager = [BusinessManager GetInstance];
    NSMutableArray *shopAnnotations = businessManager.comicShops;
    NSLog(@"%@", shopAnnotations);
    
    if(dirty == NO)
    {
        if([shopAnnotations count] >0)
        {
            [secondMapView removeAnnotations:secondMapView.annotations];
        }
    }
    else if (dirty == YES)
    {
        dirty = NO;
    }

    //for every comic shop, place an annotation on the secondMapView
    for (int i = 0; i < [shopAnnotations count]; i++)
    {
        //create an annotation for every comic shop
        MyMapAnnotations *ann = [[MyMapAnnotations alloc] initWithTitle:[[shopAnnotations objectAtIndex:i]shopName ]coord:[[shopAnnotations objectAtIndex:i]exactLocation]];
        NSLog(@"name = %@, lat = %f, long = %f", ann.title, ann.coordinate.latitude, ann.coordinate.longitude);
        if(ann != nil)
         {
             //add annotation to map
             [secondMapView addAnnotation:ann];
         }
    }

    [super viewWillAppear:true];
}

- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>)annotation
{
    MKPinAnnotationView *annView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"CustomPin"];
    if(annView != nil)
    {
        //annView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"CustomPin"];
        //animate pin drop
        annView.animatesDrop = true;
        //change pin color
        annView.pinColor = MKPinAnnotationColorGreen;
        annView.canShowCallout = YES;
    }
    return annView;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
