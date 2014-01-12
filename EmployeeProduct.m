//
//  EmployeeProduct.m
//  lession20140104
//
//  Created by Hiep Huynh on 11/26/2014.
//  Copyright (c) 2014 Hiep Huynh. All rights reserved.
//

#import "EmployeeProduct.h"
#import "Employee.h"
@implementation EmployeeProduct
@synthesize numofproduct;

-(int) calsalary{
    return numofproduct*PRICE_OF_EACH_PRODUCT;
}

@end
