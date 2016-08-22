//
//  ViewController.m
//  CTCommonUtilDemo
//
//  Created by Admin on 16/8/22.
//  Copyright © 2016年 Arvin. All rights reserved.
//

#import "ViewController.h"
#import "CTCommonUtil/CTCommonUtil.h"
#import "CTCommonUtil/CTCommonUtil+Valid.h"
#import "CTCommonUtil/CTCommonUtil+File.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSLog(@"是否是数字 %@", ct_isNumber(@"08889889898989080")?@"YES":@"NO");
    
    NSLog(@"是否是数字 %@", ct_isNumberLengh(@"", 1,10)?@"YES":@"NO");

    NSLog(@"是否是有效的密码 %@", ct_isValidPassword(@"")?@"YES":@"NO");

    NSLog(@"是否是email %@", ct_isEmail(@"7637f1676@gmail.cn")?@"YES":@"NO");

    NSLog(@"是否是URL %@", ct_isURL(@"http://www.aidu.com")?@"YES":@"NO");

    NSLog(@"是否是身份证号 %@", ct_isIdentityCard(@"411122XXXXXXXX3013")?@"YES":@"NO");

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
