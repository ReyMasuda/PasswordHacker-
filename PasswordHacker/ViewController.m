//
//  ViewController.m
//  PasswordHacker
//
//  Created by ReyMasuda on 2015/03/07.
//  Copyright (c) 2015年 ReyMasuda. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    resultLabe1.text = @"?";
    resultLabe2.text = @"?";
    resultLabe3.text = @"?";
    resultLabe4.text = @"?";
    
    password = 1234;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)start{
    for (int i = 0 ; i < 10000 ; i = i +1) {
        countLabel.text = [NSString stringWithFormat:@"%d",i]; //カウント中の数字をcountLabelに表示する
        
        [[NSRunLoop currentRunLoop]
         runUntilDate:[NSDate dateWithTimeIntervalSinceNow:0.0005]
         ]; //処理を0.0005秒、待機する
    }
    
    if(i == password){ //passwordと一致した場合
        int digit[4]; //passwordの桁ごとの数字
        
        for (int j = 0; j < 4 ; j = j + 1) {
            digit[j] = (password % 10); //j桁目の数字
            password = password / 10;
        }
        
        resultLabe1.text = [NSString stringWithFormat:@"%d",digit[0]];
        resultLabe2.text = [NSString stringWithFormat:@"%d",digit[1]];
        resultLabe3.text = [NSString stringWithFormat:@"%d",digit[2]];
        resultLabe4.text = [NSString stringWithFormat:@"%d",digit[3]];
}
    
}

@end
