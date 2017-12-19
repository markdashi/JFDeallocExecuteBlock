//
//  NSObject+JFDeallocExecute.m
//  JFDeallocExcute
//
//  Created by apple on 19/12/17.
//  Copyright © 2017年 mark. All rights reserved.
//

#import "NSObject+JFDeallocExecute.h"
#import <objc/runtime.h>

const void *JFDeallocExecutekey = nil;

@implementation NSObject (JFDeallocExecute)

- (NSMutableArray *)deallocExecutors{
    
    NSMutableArray *array = objc_getAssociatedObject(self, JFDeallocExecutekey);
    if (!array) {
        array = [NSMutableArray arrayWithCapacity:1];
        objc_setAssociatedObject(self, JFDeallocExecutekey, array, OBJC_ASSOCIATION_RETAIN);
    }
    return array;
}


- (void)jf_DeallocExcute:(JFDeallocExecuteBlock)block{
    if (block) {
        JFDeallocExecute *executor = [[JFDeallocExecute alloc] initWithBlock:block];
        [[self deallocExecutors] addObject:executor];
    }
}

@end
