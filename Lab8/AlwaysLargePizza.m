//
//  AlwaysLargePizza.m
//  Lab8
//
//  Created by 桑染 on 2020-04-08.
//  Copyright © 2020 Rick. All rights reserved.
//

#import "AlwaysLargePizza.h"

@implementation AlwaysLargePizza

- (BOOL)kitchen:(KitchenDelegation *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(KitchenDelegation *)kitchen { 
    return YES;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza {
    NSLog(@"AlwaysLargePizza: We can make it! Free upgraded size!");
}


@end
