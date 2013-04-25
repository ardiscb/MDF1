//
//  BusinessManager.m
//  MDF1app3
//
//  Created by Courtney Ardis on 4/23/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import "BusinessManager.h"

@implementation BusinessManager
@synthesize comicShops;

static BusinessManager *_instance = nil;

+(void)CreateInstance
{
    if(_instance == nil)
    {
        _instance = [[self alloc] init];
    }
}

+(BusinessManager*)GetInstance
{
    return _instance;
}

+(id)alloc
{
    _instance = [super alloc];
    return _instance;
}

-(id)init
{
    if(self = [super init])
    {
        //init code
        NSLog(@"inside singleton");
        
        comicShops = [[NSMutableArray alloc]init];     
        
    }
    return self;
}




@end
