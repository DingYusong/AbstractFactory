//
//  main.m
//  AbstractFactory
//
//  Created by 丁玉松 on 2018/10/31.
//  Copyright © 2018 丁玉松. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "MySqlFactory.h"

#import "AbstractUseAccess.h"
#import "SqlServerFactory.h"
#import "User.h"

/**
 将数据库从sqlserver换到mysql。
 
 在工厂方法模式上进行进一步抽象。
 
 如果用抽象工厂模式的话，这种切换数据库需要新增一个数据库工厂类，只需要新增一个工厂类，并将实例化工厂类的代码进行修改。
 
 数据库工厂类和数据访问类，用接口来进行统一，面向接口编程，无论换成什么数据库，都需要实现接口。
 
 
 新增一个遵循数据库工厂接口的mysqlFactory工厂类，新增一个遵循用户数据存取接口的mysqlUser控制类。
 数据库修改到mysql，只需要在使用环境里修改工厂的实例化代码，原来的插入和获取用户的逻辑都不需要变化。符合开闭原则。
 
 */
int main(int argc, const char *argv[]) {
    @autoreleasepool {
        //抽象工厂模式
        User *user = [User new];
        user.name = @"丁丁";
        user.age = 28;

        AbstractDBFactory *afactory = [SqlServerFactory new];
        //        AbstractDBFactory *afactory = [MySqlFactory new];

        AbstractUseAccess *auser = [afactory createUser];
        [auser insertUser:user];
        [auser gotUser];
    }
    return 0;
}
