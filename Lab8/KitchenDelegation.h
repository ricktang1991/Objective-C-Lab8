//
//  KitchenDelegation.h
//  Lab8
//
//  Created by 桑染 on 2020-04-08.
//  Copyright © 2020 Rick. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
@class KitchenDelegation;

@protocol KitchenDelegate <NSObject>

- (BOOL)kitchen:(KitchenDelegation *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings;
- (BOOL)kitchenShouldUpgradeOrder:(KitchenDelegation *)kitchen;

@optional
- (void)kitchenDidMakePizza:(Pizza *)pizza;

@end

@interface KitchenDelegation : NSObject

@property(nonatomic, weak) id<KitchenDelegate> delegate;

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings;

@end

