//
//  Teacher.m
//  messageTransmit
//
//  Created by Kevin.J on 2019/7/30.
//  Copyright © 2019 姜凯文. All rights reserved.
//

#import "Teacher.h"
#import "Student.h"

@implementation Teacher

- (id)forwardingTargetForSelector:(SEL)aSelector {
    NSString *selStr = NSStringFromSelector(aSelector);
    
    if ([selStr isEqualToString:@"eat:"]) {
        return [[Student alloc] init];
    }
    
    return [super forwardingTargetForSelector:aSelector];
}

//- (void)testJKW {
//    NSLog(@"TQYSD");
//}

- (void)printJKW {
    SEL sel = @selector(testJKW);
    IMP IMP1 = [self methodForSelector:sel];
    NSLog(@"Teacher:%p", IMP1);
}

@end
