//
//  JFDeallocExecute.h
//  JFDeallocExcute
//
//  Created by apple on 19/12/17.
//  Copyright © 2017年 mark. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^JFDeallocExecuteBlock)(void);

@interface JFDeallocExecute : NSObject

- (instancetype)initWithBlock:(JFDeallocExecuteBlock)block;

@end
