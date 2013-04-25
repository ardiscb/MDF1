//
//  DetailViewController.h
//  MDF1app3
//
//  Created by Courtney Ardis on 4/24/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
#import "ShopInfoClass.h"
#import "MyMapAnnotations.h"

@interface DetailViewController : UIViewController <MKMapViewDelegate>
{
    IBOutlet UILabel *name;
    IBOutlet UILabel *latitude;
    IBOutlet UILabel *longitude;
    
    IBOutlet MKMapView *detailMapView;
    
    NSArray *myMapAnnotations;
}

@property (strong) NSString *comicShopName;
@property (strong, nonatomic) UILabel *name;
@property CLLocationCoordinate2D shopLocation;
@property (nonatomic, retain) ShopInfoClass *shopInfo;

- (IBAction)onClick:(id)sender;
@end
