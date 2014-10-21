//
//  RSCUIMaster.m
//  RSCUIMaster-iOS
//
//  Created by Luke on 10/21/14.
//  Copyright (c) 2014 UIMaster. All rights reserved.
//

#import "RSCUIMaster.h"
#import "RSCUIParser.h"

@implementation RSCUIMaster

- (id)parseLayout:(NSString *)layoutName
{
    return nil;
}

- (id)parseLayout:(NSString *)layoutName withParaser:(id<RSCUIParserDelegate>)parser
{
    NSAssert(layoutName, @"the layout name can not be nil.");
    NSAssert(parser, @"the parser can not be nil.");
    
    if (parser) {
        
    }
    
    return nil;
}

@end
