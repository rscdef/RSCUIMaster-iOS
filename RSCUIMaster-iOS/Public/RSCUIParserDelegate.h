//
//  RSCUIParserDelegate.h
//  RSCUIMaster-iOS
//
//  Created by Luke on 10/21/14.
//  Copyright (c) 2014 UIMaster. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol RSCUIParserDelegate <NSObject>

- (UIView *)parseLayout:(NSString *)layoutName;

@end
