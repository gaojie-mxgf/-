//
//  main.m
//  形参个数可变方法
//
//  Created by 高洁 on 16/9/4.
//  Copyright © 2016年 高洁. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Person.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        Person *onePerson = [[Person alloc] init];
        [onePerson text:@"测试",@"zhangsan",@"lisi",@"wang er wu",@[],@{},nil];
    }
    return 0;
}
