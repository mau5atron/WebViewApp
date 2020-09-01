//
//  ViewController.h
//  WebViewApp
//
//  Created by Gabriel Betancourt on 8/30/20.
//  Copyright © 2020 mau5atron. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
#import <QuartzCore/QuartzCore.h>


@interface ViewController : UIViewController <WKNavigationDelegate, UISearchBarDelegate>

@property (weak, nonatomic) IBOutlet WKWebView *webView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *actInd;
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;

- (IBAction)stopLoading:(id)sender;
- (IBAction)refreshPage:(id)sender;
- (IBAction)back:(id)sender;
- (IBAction)forward:(id)sender;

@end

