//
//  KitchenDelegation.m
//  Lab8
//
//  Created by 桑染 on 2020-04-08.
//  Copyright © 2020 Rick. All rights reserved.
//

#import "KitchenDelegation.h"

@implementation KitchenDelegation

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings {
    if ([self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings] == YES) {
        if ([self.delegate kitchenShouldUpgradeOrder:self] == YES) {
            Pizza *pizza = [[Pizza alloc]initWithSize:Large toppings:toppings];
            [self.delegate kitchenDidMakePizza:pizza];
            return pizza;
        } else {
            Pizza *pizza = [[Pizza alloc]initWithSize:size toppings:toppings];
            [self.delegate kitchenDidMakePizza:pizza];
            return pizza;
        }
    } else {
        Pizza *pizza = [[Pizza alloc]initWithSize:size toppings:@[@"Can't make pizza with anchovies!"]];
        return pizza;
    }
}


@end
