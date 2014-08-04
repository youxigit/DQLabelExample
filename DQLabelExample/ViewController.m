//
//  ViewController.m
//  DQLabelExample
//
//  Created by leon on 14-8-4.
//  Copyright (c) 2014年 com.xdd. All rights reserved.
//

#import "ViewController.h"
#import "MyLabel.h"

@interface ViewController ()

@property (nonatomic, retain) IBOutlet MyLabel *exampleLabel1;
@property (nonatomic, retain) IBOutlet MyLabel *exampleLabel2;

@end

@implementation ViewController
@synthesize exampleLabel1;
@synthesize exampleLabel2;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString *exampleString1 = @"这个自定义的label可以支持中文，设置行间距和字间距，瞧瞧效果吧！怒号哈文可视对讲卡瓦金额打.jshsfi和如何为方便好几万俄计划花费uw";
    exampleLabel1.linesSpacing = 20.0f;
    exampleLabel1.characterSpacing = 5.0f;
    [exampleLabel1 setText:exampleString1];
    
    NSString *exampleString2 = @"the customed label suported english and other langue retain label old methods and properties  the label is very useful!";
    exampleLabel2.linesSpacing = 20.0f;
    exampleLabel2.characterSpacing = 10.0f;
    [exampleLabel2 setText:exampleString2];
    int hi = [exampleLabel1 getAttributedStringHeightWidthValue:220];
    [exampleLabel1 setFrame:CGRectMake(0, 130, 320, hi-30)];
    NSLog(@"%d",hi);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
