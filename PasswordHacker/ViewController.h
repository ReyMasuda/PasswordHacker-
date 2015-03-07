//
//  ViewController.h
//  PasswordHacker
//
//  Created by ReyMasuda on 2015/03/07.
//  Copyright (c) 2015年 ReyMasuda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    IBOutlet UILabel *resultLabe1; //結果(一番右のラベル)
    IBOutlet UILabel *resultLabe2;//結果(一番右から2番目のラベル)
    IBOutlet UILabel *resultLabe3;//結果(一番右から3番目のラベル)
    IBOutlet UILabel *resultLabe4;//結果(一番右から4番目のラベル)
    IBOutlet UILabel *countLabel;//結果カウント中の数字を表すラベル
    
    int password; //探し出す数字
}

-(IBAction)start;


@end

