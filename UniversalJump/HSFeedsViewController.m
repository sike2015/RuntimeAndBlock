//
//  HSFeedsViewController.m
//  UniversalJump
//
//  Created by 苏孝禹 on 16/8/29.
//  Copyright © 2016年 苏孝禹. All rights reserved.
//

#import "HSFeedsViewController.h"
#import "ViewController1.h"

@interface HSFeedsViewController ()

@end

@implementation HSFeedsViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor grayColor];
    
    
    testBlock();
    
    countBlock(1,4);
    
    
    NSLog(@"%@", strBlock(@"1",@"suxiaoyu"));
    
    NSLog(@"%d",userTestClick(3,6));
    
}


int(^userTestClick)(int ,int)=^(int a,int b){
    
    return a+b;
    
};


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    ViewController1 *vc1 = [[ViewController1 alloc]init ];
    vc1.testClick = ^(UIColor *color){
        self.view.backgroundColor = color;
    };
    [self presentViewController:vc1 animated:YES completion:^{
        
    }];
}



//无参数 无返回值block
void (^testBlock)()=^(){
    NSLog(@"This is Test Block!");
};



void (^countBlock)(int ,int )=^(int a,int b){
    NSLog(@"a+b = %d",a+b);
    
};


NSString *(^strBlock)(NSString*,NSString*)=^(NSString* str1,NSString *str2){
    return [NSString stringWithFormat:@"%@%@",str1,str2];
};



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
