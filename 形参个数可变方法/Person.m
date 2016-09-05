//
//  Person.m
//  形参个数可变方法
//
//  Created by 高洁 on 16/9/4.
//  Copyright © 2016年 高洁. All rights reserved.
//

#import "Person.h"

@implementation Person


/*
 
    获取个数可变形参需要使用如下关键字
    1 va_list:这是一个类，用于定义指向可变参数列表的指针变量
    2 va_start:这是一个函数，该函数指定开始处理可变形参的列表，并让指针变量指向可变形参列表的第一个参数
    3 va_end:结束处理可变形参，释放指针变量
    4 va_arg:该函数返回获取指针但钱指向的参数的值，并将指针移动到指向下一个参数
 
 */

-(void)text:(NSString *)name, ...
{
    //使用va_list定义一个arglist指针变量，改指针变量指向可变参数列表
    va_list argList;
    //如果第一个name参数存在，才需要处理后面的参数
    if (name)
    {
        //由于name参数并不在可变参数列表中，因此先处理name参数
        NSLog(@"name = %@",name);
        //让argList指向第一个可变参数列表的第一个参数，开始提取可变参数列表的参数
        va_start(argList, name);
        //va_arg用于提取argList指针当前指向的参数，并将指针移动到指向下一个参数
        //arg变量用于保存当前获取的参数，如果该参数不为nil，进入循环体
        NSString *arg = va_arg(argList, id);
        while (arg)
        {
            //打印每个参数
            NSLog(@"%@,",arg);
            //再次提取下一个参数，并将指针移动到指向下一个参数
            arg = va_arg(argList, id);
        }
        //释放argList指针，结束提取
        va_end(argList);
    }
}

@end
