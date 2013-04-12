//
//  CustomTableViewController.m
//  MDF1app1
//
//  Created by Courtney Ardis on 4/11/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import "CustomTableViewController.h"

@implementation CustomTableViewController
@synthesize characterName;
@synthesize teamLabel;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
