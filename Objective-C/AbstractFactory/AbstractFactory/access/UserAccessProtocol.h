//
//  UserAccessProtocol.h
//  AbstractFactory
//
//  Created by 丁玉松 on 2018/10/31.
//  Copyright © 2018 丁玉松. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"


@protocol UserAccessProtocol <NSObject>

-(void)insertUser:(User *)user;

-(User *)gotUser;

@end

