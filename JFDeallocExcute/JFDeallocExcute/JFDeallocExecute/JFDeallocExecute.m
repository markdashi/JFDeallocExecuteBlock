//
//  JFDeallocExecute.m
//  JFDeallocExcute
//
//  Created by apple on 19/12/17.
//  Copyright © 2017年 mark. All rights reserved.
//

#import "JFDeallocExecute.h"

@interface JFDeallocExecute ()

@property (nonatomic, copy) JFDeallocExecuteBlock deallocExecuteBlock;

@end

@implementation JFDeallocExecute

- (instancetype)initWithBlock:(JFDeallocExecuteBlock)block{
    self = [super init];
    if (self) {
        _deallocExecuteBlock = [block copy];
    }
    return self;
}

- (void)dealloc{
    _deallocExecuteBlock ? _deallocExecuteBlock() : nil;
}

@end
