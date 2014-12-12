//
//  ViewController.m
//  Test
//
//  Created by Alvin Du on 12/11/14.
//  Copyright (c) 2014 Alvin Du. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.webView = [[UIWebView alloc] init];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *fullURL = @"https://tapjoycdn-a.akamaihd.net/site/assets/frontend_app/views/alvin-hackathon.b902c995.html";
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    self.view = self.webView;
    [_webView loadRequest:requestObj];
    
    //Get random game
    
    double delayInSeconds = 3.0;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        NSString *iTunesLink = @"itms://itunes.apple.com/us/app/wolframalpha/id334989259?mt=8#";
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:iTunesLink]];
    });
}


- (void)didGetRandomGameOffer:(id)arg {
    // Provide a random game based on
    // https://my.tapjoy.com/api/my_apps.json
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
