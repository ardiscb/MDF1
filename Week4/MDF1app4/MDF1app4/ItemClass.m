//
//  ItemClass.m
//  MDF1app4
//
//  Created by Courtney Ardis on 4/30/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import "ItemClass.h"

@implementation ItemClass
@synthesize plot, title, actors;

-(id)initWithTitle:(NSString*)movieTitle moviePlot:(NSString*)moviePlot actors:(NSString*)movieActors
{
    if((self = [super init]))
    {
        title = movieTitle;
        plot = moviePlot;
        actors = movieActors;
    }
    return self;
}

@end
