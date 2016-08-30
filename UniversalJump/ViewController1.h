//
//  ViewController1.h
//  testBlock
//
//  Created by 苏孝禹 on 16/8/30.
//  Copyright © 2016年 苏孝禹. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController1 : UIViewController


typedef void(^TestClick)(id);
@property (nonatomic,copy)TestClick testClick;




@end
