//
//  employeemanagementViewController.h
//  lession20140112
//
//  Created by HocVien on 1/12/14.
//  Copyright (c) 2014 HOME. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EmployeeManager.h"

@interface employeemanagementViewController : UIViewController
{
    IBOutlet UITextField *txtname;
    IBOutlet UITextField *txtaddress;
    IBOutlet UITextField *txtsalary;
    
    IBOutlet UITextField *txtparameter;
    IBOutlet UITextField *txtemail;
    IBOutlet UITextField *txtdob;
    IBOutlet UITextField *txttel;
    IBOutlet UILabel *lbtypeE;
    IBOutlet UILabel *totalE;
}
@property(nonatomic,strong) EmployeeManager * em;
@property(nonatomic,strong) Employee *eitem;

@end
