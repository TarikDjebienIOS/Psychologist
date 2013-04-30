//
//  WebBrowserViewController.m
//  Psychologist
//
//  Created by Tarik Djebien on 30/04/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "WebBrowserViewController.h"

@implementation WebBrowserViewController
@synthesize myWebView = _myWebView;

-(void)viewDidLoad
{
    [super viewDidLoad];
    NSURL *lsoMedicalURL = [NSURL URLWithString:@"http://www.lsomedical.com"];
    NSURLRequest *lsoMedicalRequest = [NSURLRequest requestWithURL:lsoMedicalURL];
    [self.myWebView loadRequest:lsoMedicalRequest];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

@end
