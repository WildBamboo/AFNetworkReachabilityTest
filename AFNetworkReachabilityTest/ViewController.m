//
//  ViewController.m
//  AFNetworkReachabilityTest
//
//  Created by Josh Wood on 26/03/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"
#import "MyAFWrapper.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
}

- (IBAction)didTouchButton:(id)sender {
    NSString *reach = [MyAFWrapper apiIsReachable] ? @"Is reachable" : @"Not reachable";
    [[[UIAlertView alloc] initWithTitle:@"Reachability status"
                                message:reach
                               delegate:nil
                      cancelButtonTitle:@"OK"
                      otherButtonTitles:nil] show];
}

@end
