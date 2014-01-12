//
//  employeemanagementViewController.m
//  lession20140112
//
//  Created by HocVien on 1/12/14.
//  Copyright (c) 2014 HOME. All rights reserved.
//

#import "employeemanagementViewController.h"
#import "Employee.h"
#import "EmployeeManager.h"
#import "EmployeeOffice.h"
#import "EmployeeProduct.h"
#import "EmployeeSale.h"
int empli=0;
@interface employeemanagementViewController ()

@end

@implementation employeemanagementViewController
@synthesize em,eitem;


-(id) init{
    self= [super init];
    if (self!=nil){
        return self;
    }
    return nil;
    
}
- (void)viewDidLoad// Do any additional setup after loading the view, typically from a nib.
{
    [super viewDidLoad];
    em = [[EmployeeManager alloc] init];
    
   
    totalE.text =[NSString stringWithFormat:@"Employee is: 0/%d",[em getTotalEmployee]];
	
}
- (IBAction)chooseEployee:(id)sender {
    txtname.text =@"";
    txtaddress.text=@"";
    txtdob.text=@"";
    txtemail.text=@"";
    txttel.text=@"";
    txtsalary.text=@"0";
    txtparameter.text=@"";
    NSString *btname=[sender titleLabel].text;
    //NSLog(btname);
    if([btname isEqualToString:@"+ officer"]){
        eitem=[[EmployeeOffice alloc] init];
        eitem.idtypeodEmployee=1;
        lbtypeE.text=@"work day";
    }else if([btname isEqualToString:@"+ productor"]){
        eitem=[[EmployeeProduct alloc] init];
        eitem.idtypeodEmployee=2;
        lbtypeE.text=@"num prod";
    }else if([btname isEqualToString:@"+ saler"]){
        eitem=[[EmployeeSale alloc] init];
        eitem.idtypeodEmployee=3;
        lbtypeE.text=@"num prod";
    }else {
        eitem=[[EmployeeOffice alloc] init];
        eitem.idtypeodEmployee=1;
        lbtypeE.text=@"work day";
    }
  
}
- (IBAction)insertEmloyee:(id)sender {
    eitem.Ename=[txtname text];
    eitem.Eaddress=[txtaddress text];
    eitem.Edob=[txtdob text];
    eitem.Eemail=[txtemail text];
    eitem.Etel=[txttel text];
    eitem.Esalary=[[txtsalary text] intValue];
   
    [em addEmployee:eitem];
    totalE.text =[NSString stringWithFormat:@"Employee is: %d/%d",[em getTotalEmployee],[em getTotalEmployee]];
    empli=[em getTotalEmployee];
    NSLog(@"asdfadsfsdf");
}
- (void) textFieldShouldReturn:(UITextField *) sender{
    [sender resignFirstResponder];
    
    
}
- (IBAction)changetext:(id)sender {
    if(eitem.idtypeodEmployee==1){
        ((EmployeeOffice *)eitem).woday = [[txtparameter text] intValue];
    }else if (eitem.idtypeodEmployee==2){
        ((EmployeeProduct *)eitem).numofproduct=[[txtparameter text] intValue];
    }else{
        ((EmployeeSale *)eitem).numofproduct=[[txtparameter text] intValue];
    }
    txtsalary.text=[NSString stringWithFormat:@"%d",[eitem calsalary]];
    eitem.Esalary=[eitem calsalary];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)changeEmployee:(id)sender {
    
    
    Employee* etemp= [[Employee alloc] init];

    NSString* btname=[sender titleLabel].text;
    if([btname isEqualToString:@"<<"]){
        if(empli==0){
            return;
        }
        etemp= [em getEmployee:(empli-1)];
        empli=empli-1;
    }else{
        if(empli==[em getTotalEmployee]){
            return;
        }
        etemp= [em getEmployee:(empli+1)];
        empli=empli+1;
    }
    
    txtname.text =@"";
    txtaddress.text=@"";
    txtdob.text=@"";
    txtemail.text=@"";
    txttel.text=@"";
    txtsalary.text=@"0";
    txtparameter.text=@"";
    NSLog(@"sdfasdf");
    
}

@end
