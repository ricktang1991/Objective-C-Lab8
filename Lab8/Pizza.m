//
//  Pizza.m
//  Lab8
//
//  Created by 桑染 on 2020-04-04.
//  Copyright © 2020 Rick. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (instancetype)initWithSize: (PizzaSize) size toppings: (NSArray *) toppings;
{
    self = [super init];
    if (self) {
        _size = size;
        _toppings = toppings;
    }
    return self;
}

+(Pizza *)largePepperoni {
    return [[Pizza alloc]initWithSize:Large toppings:@[@"peperoni"]];
}

+(Pizza *)meatLoversWithSize:(PizzaSize) size {
    return [[Pizza alloc]initWithSize:size toppings:@[@""]];
}

-(NSString *)pizzaDetail {
    NSString *size;
    if (_size == Small) {
        size = @"small";
    } else if (_size == Medium) {
        size = @"medium";
    } else {
        size = @"large";
    }
    return [NSString stringWithFormat:@"PizzaSize: %@, Toppings: %@", size, _toppings];
}
@end
