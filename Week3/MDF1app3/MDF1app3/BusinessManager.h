//
//  BusinessManager.h
//  MDF1app3
//
//  Created by Courtney Ardis on 4/23/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface BusinessManager : NSObject
{
    NSMutableArray *comicShops;

    NSInteger *comicShopLatitude;
    NSInteger *comicShopLongitude;
}

+(void)CreateInstance;
+(BusinessManager*)GetInstance;

@property (nonatomic, strong)NSMutableArray *comicShops;

@end
