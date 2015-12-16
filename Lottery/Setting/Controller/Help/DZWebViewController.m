//
//  DZWebViewController.m
//  Lottery
//
//  Created by dengwei on 15/9/29.
//  Copyright (c) 2015年 dengwei. All rights reserved.
//

#import "DZWebViewController.h"
#import "DZWebPage.h"

@interface DZWebViewController ()<UIWebViewDelegate>
{
    UIWebView *_webView;
    UIActivityIndicatorView *_indicator;
}

@end

@implementation DZWebViewController

-(void)loadView
{
    _webView = [[UIWebView alloc] initWithFrame:[UIScreen mainScreen].applicationFrame];
    _webView.delegate = self;
    self.view = _webView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //1.设置标题
    self.title = self.webPage.title;
    
    //2.显示网页
    NSURL *url = [[NSBundle mainBundle] URLForResource:self.webPage.html withExtension:nil];
    [_webView loadRequest:[NSURLRequest requestWithURL:url]];
    
    //3.设置左边按钮关闭
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"关闭" style:UIBarButtonItemStyleBordered target:self action:@selector(close)];
}

#pragma mark 关闭控制器
-(void)close
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - UIWebViewDelegate methods
-(void)webViewDidStartLoad:(UIWebView *)webView
{
    //添加圈圈
    if (_indicator == nil) {
        UIActivityIndicatorView *indicator = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
        indicator.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin;
        CGFloat x = [UIScreen mainScreen].applicationFrame.size.width / 2;
        CGFloat y = [UIScreen mainScreen].applicationFrame.size.height / 2;
        indicator.center = CGPointMake(x, y);
        [self.view addSubview:indicator];
        _indicator = indicator;
    }
    
    [_indicator startAnimating];
    
}

#pragma mark 任何js代码都只能在这个方法调用后执行
-(void)webViewDidFinishLoad:(UIWebView *)webView
{
    //移除圈圈
    [_indicator stopAnimating];
    
    //执行跳转到指定位置的js代码
    NSString *js = [NSString stringWithFormat:@"window.location.href='#%@';",_webPage.ID];
    [webView stringByEvaluatingJavaScriptFromString:js];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
