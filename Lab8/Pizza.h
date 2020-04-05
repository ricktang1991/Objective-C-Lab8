//
//  Pizza.h
//  Lab8
//
//  Created by 桑染 on 2020-04-04.
//  Copyright © 2020 Rick. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pizza : NSObject

typedef enum {
    Small,
    Medium,
    Large
} PizzaSize;

- (instancetype)initWithSize: (PizzaSize) size toppings: (NSArray *) toppings;

@property PizzaSize size;
@property NSArray *toppings;

+(Pizza *)largePepperoni;
+(Pizza *)meatLoversWithSize:(PizzaSize) size;
-(NSString *)pizzaDetail;

@end
