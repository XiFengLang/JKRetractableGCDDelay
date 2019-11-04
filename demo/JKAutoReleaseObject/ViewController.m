//
//  ViewController.m
//  JKAutoReleaseObject
//
//  Created by 蒋鹏 on 17/1/6.
//  Copyright © 2017年 溪枫狼. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+GCDDelayTask.h"

@interface ViewController ()


@end

@implementation ViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        [self requestRepeatedly];
    });
    
    
//    dispatch_queue_t queue = 
}


- (void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    NSLog(@"%@",self.navigationController);
    NSLog(@"%@",self.navigationController.topViewController);
    NSLog(@"%@",self.navigationController.viewControllers);
}

- (void)requestRepeatedly {
    [self jk_excuteDelayTask:1 inMainQueue:^{
        /// 每隔4秒循环调一次，个别机型会出现野指针错误，所以这个地方再延迟1.5秒
//        [self jk_excuteDelayTaskWithKey:"requestRepeatedly" delayInSeconds:0.15 inMainQueue:^{
            [self requestRepeatedly];
//        }];
    }];
}

@end
