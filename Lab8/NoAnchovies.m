//
//  NoAnchovies.m
//  Lab8
//
//  Created by 桑染 on 2020-04-08.
//  Copyright © 2020 Rick. All rights reserved.
//

#import "NoAnchovies.h"

@implementation NoAnchovies

- (BOOL)kitchen:(KitchenDelegation *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    if ([toppings containsObject:@"anchovies"]) {
        return NO;
    } else {
        return YES;
    }
}

- (BOOL)kitchenShouldUpgradeOrder:(KitchenDelegation *)kitchen {
    return NO;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza {
    NSLog(@"We can make it!");
}

@end
