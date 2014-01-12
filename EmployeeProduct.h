//
//  EmployeeProduct.h
//  lession20140104
//
//  Created by Hiep Huynh on 11/26/2014.
//  Copyright (c) 2014 Hiep Huynh. All rights reserved.
//

#import "Employee.h"

#define PRICE_OF_EACH_PRODUCT 50000;
@interface EmployeeProduct : Employee

@property (nonatomic) int numofproduct;

-(int) calsalary;

@end
