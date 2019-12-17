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

/// Factory
@interface Interviewer : NSObject

- (void)askQuestions;
@end

@implementation Interviewer

- (void)askQuestions {}

@end


@interface Developer : Interviewer

@end

@implementation Developer
- (void)askQuestions {
    
}
@end

@interface CommunityExecutive : Interviewer

@end

@implementation CommunityExecutive

- (void)askQuestions {
    
}

@end

@interface HireManager : NSObject
- (Interviewer *)makeInterviewer;
- (void)takeInterview;
@end

@implementation HireManager

- (Interviewer *)makeInterviewer { return NULL;}

- (void)takeInterview {
    Interviewer *interviewer = [self makeInterviewer];
    [interviewer askQuestions];
}
@end

@interface DevelopmentManager : HireManager

@end

@implementation DevelopmentManager

- (Interviewer *)makeInterviewer {
    return [[Developer alloc]init];
}

@end

@interface MarketingManager : HireManager


@end

@implementation MarketingManager

- (Interviewer *)makeInterviewer {
    return [[CommunityExecutive alloc]init];
}

@end



/// Abstract Factory
@interface Door1 : NSObject {
}

- (void)getDescription;
@end

@implementation Door1
- (void)getDescription {}
@end

@interface WoodenDoor1 : Door1

@end

@implementation WoodenDoor1

- (void)getDescription {
    
}
@end

@interface IronDoor1 : Door1

@end


@implementation IronDoor1

- (void)getDescription {
    
}

@end

@interface DoorFittingExpert : NSObject
- (void)getDescription;
@end

@implementation DoorFittingExpert
- (void)getDescription {
    
}
@end

@interface Welder : DoorFittingExpert


@end

@implementation Welder

- (void)getDescription {
    
}

@end

@interface Carpenter : DoorFittingExpert

@end

@implementation Carpenter

- (void)getDescription {
    
}

@end

@interface DoorFactory1 : NSObject

- (Door1 *)makeDoor;
- (DoorFittingExpert *)makeFittingExpert;

@end

@implementation DoorFactory1
- (Door1 *)makeDoor {return NULL;}
- (DoorFittingExpert *)makeFittingExpert {return NULL;}
@end

@interface WoodenDoorFactory : DoorFactory1

@end

@implementation WoodenDoorFactory

- (Door1 *)makeDoor {
    return [[WoodenDoor1 alloc]init];
}

- (DoorFittingExpert *)makeFittingExpert {
    return [[Carpenter alloc]init];
}

@end

@interface IronDoorFactory : DoorFactory1
@end

@implementation IronDoorFactory

- (Door1 *)makeDoor {
    return [[IronDoor1 alloc]init];
}

- (DoorFittingExpert *)makeFittingExpert {
    return [[Welder alloc]init];
}

@end

/// Strategy
@interface SortStrategy : NSObject
- (void)sort:(NSArray *)array;
@end

@implementation SortStrategy
- (void)sort:(NSArray *)array {}
@end

@interface BubbleSortStrategy : SortStrategy
- (void)sort:(NSArray *)array;
@end

@implementation BubbleSortStrategy
- (void)sort:(NSArray *)array {
}
@end


@interface QuickSortStrategy : SortStrategy
@end
@implementation QuickSortStrategy
- (void)sort:(NSArray *)array {
    
}
@end

@interface Sorter : NSObject
@property (nonatomic,strong) SortStrategy *strategy;
- (id)initWithStrategy:(SortStrategy *)strategy;
- (void)sort:(NSArray *)array;
@end
@implementation Sorter

- (id)initWithStrategy:(SortStrategy *)strategy {
    if (self = [super init]) {
        _strategy = strategy;
    }
    return self;
}

- (void)sort:(NSArray *)array {
    [_strategy sort:array];
}
@end



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, Design Pattern!");
    }
    
    /// Simple Factory
    /// 简单来说，简单工厂给客户端产生一个实例，但不暴露任何实例化内部逻辑
    Door *door =  [DoorFactory makeDoor:20 height:20];
    [door getWidth];
    [door getHeight];
    
    /// Factory
    /// 它提供了一个路径来委托实例化逻辑给它的子类
    HireManager *devManager = [[DevelopmentManager alloc]init];
    [devManager takeInterview];
    HireManager *marketManager = [[MarketingManager alloc]init];
    [marketManager takeInterview];
    
    /// Abstract Factory
    /// 工程的集合，一个聚合了独立但互相依赖的工厂而不用指定他们具体类的工厂
    DoorFactory1 *woodenFactory = [[WoodenDoorFactory alloc]init];
    Door1 *door1 = [woodenFactory makeDoor];
    DoorFittingExpert *expert1= [woodenFactory makeFittingExpert];
    
    [door1 getDescription];
    [expert1 getDescription];
    
    DoorFactory1 *ironFactory = [[IronDoorFactory alloc]init];
    Door1 *door2 = [ironFactory makeDoor];
    DoorFittingExpert *expert2 = [ironFactory makeFittingExpert];
    
    [door2 getDescription];
    [expert2 getDescription];
    
    /// Strategy
    /// 策略模式允许你根据不同的情形来切换算法和策略
    Sorter *sorter = [[Sorter alloc]initWithStrategy:[[BubbleSortStrategy alloc]init] ];
    [sorter sort:@[@(2),@(3),@(1)]];
    
    Sorter *sorter1 = [[Sorter alloc]initWithStrategy:[[QuickSortStrategy alloc]init]];
    [sorter1 sort:@[@(1),@(3),@(4)]];
    return 0;
}
