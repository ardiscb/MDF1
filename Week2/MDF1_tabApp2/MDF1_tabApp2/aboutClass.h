//
//  aboutClass.h
//  MDF1_tabApp2
//
//  Created by Courtney Ardis on 4/18/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface aboutClass : NSObject
{
    NSString *details;
}
-(id)initWithDetails:(NSString *)devDetails;

@property (nonatomic, readonly)NSString *details;
@end
