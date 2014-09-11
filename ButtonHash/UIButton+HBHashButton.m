//
//  UIButton+HBHashButton.m
//  ButtonHash
//
//  Created by John Kohler on 9/11/14.
//  Copyright (c) 2014 John Kohler. All rights reserved.
//

#import "UIButton+HBHashButton.h"
#import <objc/runtime.h>

static const void *AttributeKey = &AttributeKey;
@implementation UIButton (HBHashButton)

-(void)setDictionary:(NSMutableDictionary *)dictionary{
   objc_setAssociatedObject(self, AttributeKey, dictionary, OBJC_ASSOCIATION_COPY_NONATOMIC);
}
-(NSMutableDictionary *)dictionary{
   return objc_getAssociatedObject(self, AttributeKey);
}
-(void)setObject:object forKey:(id<NSCopying>)aKey{
  NSMutableDictionary *attrs = [[NSMutableDictionary alloc]initWithDictionary:[self dictionary]];
  [attrs setObject:object forKey:aKey];
  [self setDictionary:attrs];
}
-(id)objectForKey:(id<NSCopying>)key{
  NSMutableDictionary *attrs = [self dictionary];
  return [attrs objectForKey:key];
}

@end
