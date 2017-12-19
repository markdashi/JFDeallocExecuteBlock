//
//  ViewController.m
//  JFDeallocExcute
//
//  Created by apple on 19/12/17.
//  Copyright © 2017年 mark. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+JFDeallocExecute.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self test];
}

//测试
- (void)test{
    NSObject *object = [NSObject new];
    [object jf_DeallocExcute:^{
        NSLog(@"object 销毁了");
    }];
}


@end
