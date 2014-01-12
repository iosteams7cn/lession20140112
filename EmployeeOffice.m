//
//  EmployeeOffice.m
//  lession20140104
//
//  Created by Hiep Huynh on 11/26/2014.
//  Copyright (c) 2014 Hiep Huynh. All rights reserved.
//

#import "EmployeeOffice.h"
#import "Employee.h"

@implementation EmployeeOffice
@synthesize woday;

- (int) calsalary{
    return woday*BASIC+BONUS;

}

@end
