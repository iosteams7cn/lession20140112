//
//  EmployeeSale.h
//  lession20140104
//
//  Created by Hiep Huynh on 11/26/2014.
//  Copyright (c) 2014 Hiep Huynh. All rights reserved.
//

#import "Employee.h"
#define SOLDPRICE 2000000
#define COSTOFGOODS 500000
@interface EmployeeSale : Employee

@property (nonatomic) int numofproduct;
-(int) calsalary;

@end
