//
//  UIButton+HBHashButton.h
//  ButtonHash
//
//  Created by John Kohler on 9/11/14.
//  Copyright (c) 2014 John Kohler. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (HBHashButton)
@property (nonatomic, copy) NSMutableDictionary *dictionary;
-(void)setObject:object forKey:(id<NSCopying>)aKey;
-(id)objectForKey:(id<NSCopying>)key;

@end
