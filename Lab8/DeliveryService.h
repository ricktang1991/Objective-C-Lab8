//
//  DeliveryService.h
//  Lab8
//
//  Created by 桑染 on 2020-04-08.
//  Copyright © 2020 Rick. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "DeliveryCar.h"

@interface DeliveryService : NSObject

- (void)deliverPizza:(Pizza *)pizza;
- (void)descreption:(Pizza *)pizza;

@end

