//
//  ItemClass.h
//  MDF1app4
//
//  Created by Courtney Ardis on 4/30/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ItemClass : NSObject
{
    NSString *title;
    NSString *plot;
}

-(id)initWithTitle:(NSString*)movieTitle moviePlot:(NSString*)moviePlot;


@end
