//
//  WTA_ViewController.m
//  WebToAppCommunication
//
//  Created by Mason, Darren J on 8/7/14.
//  Copyright (c) 2014 bitcows. All rights reserved.
//

#import "WTA_ViewController.h"
#import "WTA_WebConsole.h"

@interface WTA_ViewController ()

@end

@implementation WTA_ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [WTA_WebConsole enable];
    
    NSString *website = @"http://bitcows.com";
    NSURL *url = [NSURL URLWithString:website];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
     _basicWebview.delegate = self;
    
    [_basicWebview loadRequest:request];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)makeMessage:(id)sender {

    [_basicWebview stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat: @"sendMessage()"]];
}

-(void)webViewDidFinishLoad:(UIWebView *)webView{
    
    NSString *jsFile = @"communicate.js";
    NSString *jsFilePath = [[NSBundle mainBundle] pathForResource:jsFile ofType:nil];
    NSURL *jsURL = [NSURL fileURLWithPath:jsFilePath];
    
    NSString *javascriptCode = [NSString stringWithContentsOfFile:jsURL.path encoding:NSUTF8StringEncoding error:nil];
    [_basicWebview stringByEvaluatingJavaScriptFromString:javascriptCode];
    
}
@end
