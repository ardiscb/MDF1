//
//  MyMapAnnotations.m
//  MDF1app3
//
//  Created by Courtney Ardis on 4/24/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import "MyMapAnnotations.h"

@implementation MyMapAnnotations

@synthesize  title, coordinate;

-(id)initWithTitle:(NSString*)text coord:(CLLocationCoordinate2D)coord
{
    if((self = [super init]))
    {
        //set method values
        title = text;
        coordinate = coord;
    }
    return self;
}

@end
