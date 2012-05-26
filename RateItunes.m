//
//  RateItunes.m
//  RatePlugin
//
//  Created by Ivy Soft Co. on 5/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "RateItunes.h"

@implementation RateItunes
- (void)openItunesRate:(NSMutableArray*)badgeNumber withDict:(NSMutableDictionary*)options 
{
    NSString *appid = [options objectForKey:@"appid"];

	[[UIApplication sharedApplication] setApplicationIconBadgeNumber:[[ badgeNumber objectAtIndex:0] intValue]];
    NSString* url = [NSString stringWithFormat:  @"http://itunes.apple.com/WebObjects/MZStore.woa/wa/viewContentsUserReviews?id=%@&pageNumber=0&sortOrdering=1&type=Purple+Software&mt=8", appid];
    
    [[UIApplication sharedApplication] openURL: [NSURL URLWithString: url ]];
}

@end
