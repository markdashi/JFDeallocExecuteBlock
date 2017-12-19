//
//  NSObject+JFDeallocExecute.h
//  JFDeallocExcute
//
//  Created by apple on 19/12/17.
//  Copyright © 2017年 mark. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JFDeallocExecute.h"

@interface NSObject (JFDeallocExecute)

- (void)jf_DeallocExcute:(JFDeallocExecuteBlock)block;

@end
