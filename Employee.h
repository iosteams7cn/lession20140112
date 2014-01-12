//
//  Employee.h
//  lession20140104
//
//  Created by Hiep Huynh on 11/26/2014.
//  Copyright (c) 2014 Hiep Huynh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Employee : NSObject

@property (nonatomic, strong) NSString *Ename;
@property (nonatomic, strong) NSString *Eaddress;
@property (nonatomic, strong) NSString *Etel;
@property (nonatomic, strong) NSString *Edob;
@property (nonatomic, strong) NSString *Eemail;
@property (nonatomic) int Esalary;
@property (nonatomic) int idtypeodEmployee;
- (int) calsalary;

@end
