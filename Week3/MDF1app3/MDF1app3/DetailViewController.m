//
//  DetailViewController.m
//  MDF1app3
//
//  Created by Courtney Ardis on 4/24/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import "DetailViewController.h"
#import "MyMapAnnotations.h"
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface DetailViewController ()

@end

@implementation DetailViewController

@synthesize comicShopName,shopLocation,name;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    //create default span and zoom level
    MKCoordinateSpan span;
    span.latitudeDelta = 0.5f;
    span.longitudeDelta = 0.5f;
    
    //set location and span to the region of map shown on screen
    MKCoordinateRegion region;
    region.center = shopLocation;
    region.span = span;
    
    //add region to mapView
    detailMapView.region = region;
    
    //sets labels to array at index
    name.text = [NSString stringWithFormat:@"%@", comicShopName];
    latitude.text = [NSString stringWithFormat:@"%f", shopLocation.latitude];
    longitude.text = [NSString stringWithFormat:@"%f", shopLocation.longitude];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

-(void)viewDidAppear:(BOOL)animated
{
    //create annotations
    MyMapAnnotations *mapAnnotations = [[MyMapAnnotations alloc] initWithTitle:comicShopName coord:shopLocation];
    if(mapAnnotations != nil)
    {
        //add annotations to map view
        [detailMapView addAnnotation:mapAnnotations];
    }
    [super viewDidAppear:true];
}

- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>)annotation
{
    //create pin annotation view
    MKPinAnnotationView *annView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"CustomPin"];
    if(annView != nil)
    {
        //animate pin drop
        annView.animatesDrop = true;
        //change pin color
        annView.pinColor = MKPinAnnotationColorGreen;
        annView.canShowCallout = YES;
    }
    return annView;
}

- (IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    //if back button is clicked
    if(button.tag == 0)
    {
        //dismiss view
        [self dismissViewControllerAnimated:TRUE completion:nil];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
