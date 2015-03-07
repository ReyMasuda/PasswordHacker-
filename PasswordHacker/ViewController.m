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
    for (int i = 0 ; i <10000 ; i = i +1) {
        countLabel.text = [NSString stringWithFormat:@"%d",i]; //カウント中の数字をcountLabelに表示する
        
        [[NSRunLoop currentRunLoop]
         runUntilDate:[NSDate dateWithTimeIntervalSinceNow:0.0005]
         ]; //処理を0.0005秒、待機する
    }
}

@end
