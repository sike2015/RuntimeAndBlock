//
//  RunTImeString.m
//  RunControl
//
//  Created by 苏孝禹 on 16/8/29.
//  Copyright © 2016年 苏孝禹. All rights reserved.
//

#import "RunTImeString.h"

@implementation RunTimeString


- (id)forwardingTargetForSelector:(SEL)aSelector
{
    if (aSelector == @selector(uppercaseString))
    {
        return @"hello world";
    }
    return self;
}

@end
