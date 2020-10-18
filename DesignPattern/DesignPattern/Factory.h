//
//  Factory.h
//  DesignPattern
//
//  Created by SUGAR Dev on 2020/10/18.
//  Copyright © 2020 Yanci. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Phone : NSObject
@end

@interface ApplePhone : Phone
@end

@interface ApplePhoneA : ApplePhone
@end

@interface ApplePhoneB : ApplePhone

@end

@interface HuaWeiPhone : Phone
@end

@interface HuaWeiPhoneA : HuaWeiPhone
@end

@interface HuaWeiPhoneB : HuaWeiPhone

@end

typedef enum : NSUInteger {
    apple,
    huawei
} PhoneType ;

@interface SimpleFactory : NSObject
- (void)buyPhone:(PhoneType)phoneType;
@end

@interface Factory : NSObject
- (Phone *)producePhone;
@end

@interface FactoryApple : Factory
- (Phone *)producePhone;
@end

@interface FactoryHuaWei : Factory
- (Phone *)producePhone;
@end

@interface AbstractFactory:NSObject
- (Phone *)productPhoneA;
- (Phone *)productPhoneB;
@end

@interface AbstractFactoryApple : AbstractFactory
@end

@interface AbstractFactoryHuaWei : AbstractFactory
@end


NS_ASSUME_NONNULL_END
