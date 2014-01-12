//
//  EmployeeManager.h
//  lession20140104
//
//  Created by Hiep Huynh on 11/26/2014.
//  Copyright (c) 2014 Hiep Huynh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"

@interface EmployeeManager : NSObject

@property (nonatomic,strong) NSMutableArray *lstEmployee;


-(void) addEmployee:(Employee*) _employee;//them nhan vien vao danh sach
-(int) getTotalEmployee;// dem so nhan vien hien co
-(Employee *) getEmployee:(int) _index;//lay thong tin nhan vien tai vi tri i


@end
