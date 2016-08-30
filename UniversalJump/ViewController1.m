//
//  ViewController1.m
//  testBlock
//
//  Created by 苏孝禹 on 16/8/30.
//  Copyright © 2016年 苏孝禹. All rights reserved.
//

#import "ViewController1.h"

@implementation ViewController1





-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    UIColor *color =[UIColor redColor];
    
    
    self.testClick(color);
    
    
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
    
}




@end
