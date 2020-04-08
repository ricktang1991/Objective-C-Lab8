//
//  DeliveryService.m
//  Lab8
//
//  Created by 桑染 on 2020-04-08.
//  Copyright © 2020 Rick. All rights reserved.
//

#import "DeliveryService.h"

@implementation DeliveryService

- (void)deliverPizza:(Pizza *)pizza {
    DeliveryCar *deliveryCar = [DeliveryCar new];
    [deliveryCar deliverPizza:pizza];
}

- (void)descreption:(Pizza *)pizza {
    NSLog(@"%@", [pizza pizzaDetail]);
}

@end
