//
//  ViewController.m
//  WWTextView
//
//  Created by wangwei on 2018/9/14.
//  Copyright © 2018年 wangwei. All rights reserved.

#import "ViewController.h"
#import "WWTextView.h"
#define RGBA(r,g,b,a) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]
#define RGB(r,g,b)    RGBA(r,g,b,1.0f)
#define SET_FONT(INT) [UIFont systemFontOfSize:INT]
@interface ViewController ()
@property (nonatomic, strong) WWTextView *textView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"WWTextView";
    self.textView = [[WWTextView alloc] initWithFrame:CGRectMake(20, 100, [UIScreen mainScreen].bounds.size.width - 40, 300)];
    self.textView.font = SET_FONT(16.0);
    self.textView.color = RGB(56.0, 56.0, 56.0);
    self.textView.backgroundColor = RGB(234, 234, 234);
    self.textView.text =  @""; //默认文本
    self.textView.placeholderFont = [UIFont systemFontOfSize:16.0];
    self.textView.placeholderColor = [UIColor lightGrayColor];
    self.textView.limitLength = 40;
    self.textView.placeholder = @"请输入40字以内的备注";
    [self.textView setCornerRadius:4];
    self.textView.limitLabelHidden = false;
    [self.view addSubview:self.textView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
