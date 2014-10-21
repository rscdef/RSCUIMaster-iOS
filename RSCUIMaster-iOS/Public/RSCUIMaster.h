//
//  RSCUIMaster.h
//  RSCUIMaster-iOS
//
//  Created by Luke on 10/21/14.
//  Copyright (c) 2014 UIMaster. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "RSCUIParserDelegate.h"

@interface RSCUIMaster : NSObject

- (id)parseLayout:(NSString *)layoutName;
- (id)parseLayout:(NSString *)layoutName withParaser:(id<RSCUIParserDelegate>)parser;

@end
