//
//  ShopInfoClass.h
//  MDF1app3
//
//  Created by Courtney Ardis on 4/23/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface ShopInfoClass : NSObject
{
    NSString *shopName;
    CLLocationCoordinate2D exactLocation;
}

-(id)initWithTitle:(NSString*)name loca:(CLLocationCoordinate2D)loca;

@property (nonatomic, strong)NSString *shopName;
@property (nonatomic, readonly)CLLocationCoordinate2D exactLocation;
@end
