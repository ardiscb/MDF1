//
//  ShopInfoClass.m
//  MDF1app3
//
//  Created by Courtney Ardis on 4/23/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import "ShopInfoClass.h"

@implementation ShopInfoClass

@synthesize shopName, exactLocation;

-(id)initWithTitle:(NSString*)name loca:(CLLocationCoordinate2D)loca
{
    if(self = [super init])
    {
        //set method values
        shopName = name;
        exactLocation = loca;
    }
    return self;
}
@end
