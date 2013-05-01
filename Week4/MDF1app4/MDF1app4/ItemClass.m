//
//  ItemClass.m
//  MDF1app4
//
//  Created by Courtney Ardis on 4/30/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import "ItemClass.h"

@implementation ItemClass
-(id)initWithTitle:(NSString*)movieTitle moviePlot:(NSString*)moviePlot
{
    if((self = [super init]))
    {
        title = movieTitle;
        plot = moviePlot;
    }
    return self;
}
@end
