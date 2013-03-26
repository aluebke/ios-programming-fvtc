//
//  httpViewController.m
//  testhttp
//
//  Created by student on 3/25/13.
//  Copyright (c) 2013 student. All rights reserved.
//

#import "httpViewController.h"

@interface httpViewController ()

@end

@implementation httpViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void) connection:(NSURLConnection *) conn didReceiveData:(NSData *)data
{
    [httpData appendData:data];
}

-(void) connectionDidFinishLoading:(NSURLConnection *) connection
{
    //NSLog(@"Received Data:%@", httpData);
    
    NSString *response = [[NSString alloc] initWithData:httpData encoding:NSUTF8StringEncoding];
    NSLog(@"Received Data:%@", response);
}


- (IBAction)TestButtonClick:(id)sender
{
    
    httpData = [[NSMutableData alloc] init];
    NSURL *url = [NSURL URLWithString:@"http://www.google.com"];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
    [request setHTTPMethod:@"GET"];
    
    connection = [[NSURLConnection alloc]initWithRequest:request delegate:self startImmediately:YES];
    
    
}
@end
