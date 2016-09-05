//
//  Person.h
//  形参个数可变方法
//
//  Created by 高洁 on 16/9/4.
//  Copyright © 2016年 高洁. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

//如果定义方法时，最后一个形参名后面怎家一个逗号和三点(,...)则表明该形参是可以接受多个参数值得
//传值时必须将最后一个参数设置为nil，长度可变的形参一份方法中最多只能有一个，且只能处于形参列表的最后
-(void)text:(NSString *)name,...;

@end
