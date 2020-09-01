//
//  ViewController.m
//  WebViewApp
//
//  Created by Gabriel Betancourt on 8/30/20.
//  Copyright © 2020 mau5atron. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	[self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.google.com"]]];
	self.actInd.transform = CGAffineTransformMakeScale(2.50, 2.50);
	[self.webView addSubview:self.actInd];
//	[self.actInd startAnimating];
	
	self.webView.navigationDelegate = self;
}

- (void)webView:(WKWebView *)webView didCommitNavigation:(WKNavigation *)navigation {
	[self.actInd startAnimating];
}

- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation {
	[self.actInd stopAnimating];
}

- (IBAction)stopLoading:(id)sender {
	[self.webView stopLoading];
}

- (IBAction)refreshPage:(id)sender {
	[self.webView reload];
}

- (IBAction)back:(id)sender {
	if ([self.webView canGoBack]){
		[self.webView goBack];
	}
}

- (IBAction)forward:(id)sender {
	if ([self.webView canGoForward]){
		[self.webView goForward];
	}
}

@end
