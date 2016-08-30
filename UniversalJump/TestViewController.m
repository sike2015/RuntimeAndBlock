//
//  TestViewController.m
//  UniversalJump
//
//  Created by 苏孝禹 on 16/8/29.
//  Copyright © 2016年 苏孝禹. All rights reserved.
//

#import "TestViewController.h"
#import "UIButton+RunTimeButton.h"
#import "RunTimeString.h"


@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.view.backgroundColor = [UIColor greenColor];
    
    
    //测试Label
    
    
    UILabel *testLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 100) ];
    testLabel.backgroundColor = [UIColor blackColor];
    testLabel.textColor = [UIColor whiteColor];
    testLabel.center = self.view.center;
    testLabel.text = self.showName;
    [self.view addSubview:testLabel];
    
    
    UIButton *testBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 100, 100) ];
    testBtn.backgroundColor = [UIColor redColor];
    testBtn.center = self.view.center;
    [testBtn addTarget:self action:@selector(userClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:testBtn];
    
    
    RunTimeString *runTimeStr = [[RunTimeString alloc]init ];
    NSString *str = [runTimeStr performSelector:@selector(uppercaseString)];
    NSLog(@"%@",str);
    
}


- (void)userClick{
    NSLog(@"用户点击了Button !");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
