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

    for (int i = 0; i < 10; i ++) {
        NSLog(@"-- %d", i);
        NSString * str = [NSString stringWithFormat:@"%d", i];
        [[NSUserDefaults standardUserDefaults] setObject:@"fjsfsd而纷纷为南京客服你金额为你疯狂呢及开发能借我分家房客网南京复垦费卡呢我库房呢我看你发金额看我能发金额看附件二看我能飞飞机而渴望能分解肯借我可烦你结尾款奶粉你发金额看我能发金额可为你封你发金额看我能发金额可为你封看我南方可为" forKey:str];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
    
    NSLog(@"%@", ct_pathInDocument(@"dewf"));
    
    NSString * str = ct_stringWithFromat(@[@"fewf",@"fe"]);
    
    NSString * strd;
    NSLog(@"%@", ct_stringWithFromat(strd));
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
