//
//  DepartmentAccessProtocol.h
//  AbstractFactory
//
//  Created by 丁玉松 on 2018/10/31.
//  Copyright © 2018 丁玉松. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Department.h"

NS_ASSUME_NONNULL_BEGIN

@protocol DepartmentAccessProtocol <NSObject>

-(void)insertUser:(Department *)user;

-(Department *)gotUser;

@end

NS_ASSUME_NONNULL_END
