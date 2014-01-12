//
//  EmployeeSale.m
//  lession20140104
//
//  Created by Hiep Huynh on 11/26/2014.
//  Copyright (c) 2014 Hiep Huynh. All rights reserved.
//

#import "EmployeeSale.h"
#import "Employee.h"
@implementation EmployeeSale

@synthesize numofproduct;

-(int) calsalary{
    return 15/100 *numofproduct*(SOLDPRICE-COSTOFGOODS);
}

@end
