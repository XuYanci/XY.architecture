//
//  main.m
//  DesignPattern
//
//  Created by Yanci on 2019/12/13.
//  Copyright © 2019 Yanci. All rights reserved.
//

#import <Foundation/Foundation.h>

/// Simple Factory

@interface Door : NSObject

- (float)getWidth;
- (float)getHeight;

@end

@implementation Door

- (float)getWidth {return 0;}
- (float)getHeight {return 0;}

@end

@interface WoodenDoor : Door

@property (nonatomic,assign) float width;
@property (nonatomic,assign) float height;

@end

@implementation WoodenDoor

- (id)initWithWidth:(float) width height:(float)height {
    if (self = [super init]) {
        _width = width;
        _height = height;
    }
    return self;
}

- (float)getWidth {
    return _width;
    
}

- (float)getHeight {
    return _height;
}

@end

@interface DoorFactory : NSObject {
    
}
+ (Door *) makeDoor:(float)width height:(float)height;
@end
@implementation DoorFactory

+ (Door *) makeDoor:(float)width height:(float)height {
    return [[WoodenDoor alloc]initWithWidth:10 height:10 ];
}


@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, Design Pattern!");
    }
    
    /// Simple Factory
    Door *door =  [DoorFactory makeDoor:20 height:20];
    [door getWidth];
    [door getHeight];
    
    return 0;
}
