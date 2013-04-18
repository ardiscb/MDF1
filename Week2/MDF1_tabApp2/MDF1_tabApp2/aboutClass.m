//
//  aboutClass.m
//  MDF1_tabApp2
//
//  Created by Courtney Ardis on 4/18/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import "aboutClass.h"

@implementation aboutClass
@synthesize details;

-(id)initWithDetails:(NSString *)devDetails
{
    self = [super init];
    if(self != nil)
    {
        details = devDetails;
    }
    return self;
}
@end
