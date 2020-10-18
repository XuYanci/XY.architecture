//
//  Factory.m
//  DesignPattern
//
//  Created by SUGAR Dev on 2020/10/18.
//  Copyright © 2020 Yanci. All rights reserved.
//

#import "Factory.h"


@implementation Phone
@end

@implementation ApplePhone
@end

@implementation HuaWeiPhone
@end

@implementation ApplePhoneA
@end

@implementation ApplePhoneB
@end

@implementation HuaWeiPhoneA
@end

@implementation HuaWeiPhoneB
@end

@implementation SimpleFactory

- (void)buyPhone:(PhoneType)phoneType {
    Phone *phone;
    switch (phoneType) {
        case apple:
            phone = [ApplePhone new];
            break;
        case huawei:
            phone = [HuaWeiPhone new];
            break;
    }
}

@end

@implementation Factory
- (Phone *)producePhone {
    return NULL;
}
@end

@implementation FactoryApple
- (Phone *)producePhone {
    return [ApplePhone new];
}
@end


@implementation FactoryHuaWei
- (Phone *)producePhone {
    return [HuaWeiPhone new];
}
@end


@implementation AbstractFactory
- (Phone *)productPhoneA {
    return NULL;
}
- (Phone *)productPhoneB {
    return NULL;
}
@end

@implementation AbstractFactoryApple
- (Phone *)productPhoneA {
    return [ApplePhoneA new];
}
- (Phone *)productPhoneB {
    return [ApplePhoneB new];
}
@end

@implementation AbstractFactoryHuaWei
- (Phone *)productPhoneA {
    return [HuaWeiPhoneA new];
}
- (Phone *)productPhoneB {
    return [HuaWeiPhoneB new];
}

@end

