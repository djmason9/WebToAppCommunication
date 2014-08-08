//
//  WTA_WebConsole.m
//  WebToAppCommunication
//
//  Created by Mason, Darren J on 8/7/14.
//  Copyright (c) 2014 bitcows. All rights reserved.
//

#import "WTA_WebConsole.h"

@implementation WTA_WebConsole

+ (void) enable {
    [NSURLProtocol registerClass:[WTA_WebConsole class]];
}

+ (BOOL) canInitWithRequest:(NSURLRequest *)request {
    if ([[[request URL] host] isEqualToString:@"debuglogger"]){
        NSLog(@"%@", [[[request URL] path] substringFromIndex: 1]);
    }
    
    return FALSE;
}

@end
