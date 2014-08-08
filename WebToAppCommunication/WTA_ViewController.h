//
//  WTA_ViewController.h
//  WebToAppCommunication
//
//  Created by Mason, Darren J on 8/7/14.
//  Copyright (c) 2014 bitcows. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WTA_ViewController : UIViewController<UIWebViewDelegate>
- (IBAction)makeMessage:(id)sender;
@property (weak, nonatomic) IBOutlet UIWebView *basicWebview;
@property (weak, nonatomic) IBOutlet UITextView *messageContainer;

@end
