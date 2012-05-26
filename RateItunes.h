//
//  RateItunes.h
//  RatePlugin
//
//  Created by Ivy Soft Co. on 5/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#ifdef CORDOVA_FRAMEWORK
    #import <Cordova/CDVPlugin.h>
#else
    #import "CDVPlugin.h"
#endif

@interface RateItunes : CDVPlugin
- (void)openItunesRate:(NSMutableArray*)badgeNumber withDict:(NSMutableDictionary*)options;
@end
