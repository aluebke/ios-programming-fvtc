//
//  lightViewController.m
//  Lights
//
//  Created by student on 4/1/13.
//  Copyright (c) 2013 student. All rights reserved.
//

#import "lightViewController.h"


@interface lightViewController ()

@end

@implementation lightViewController

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

- (IBAction)ActionButtonClick:(id)sender
{
    //He called poset button
    NSString *url = @"http://10.4.172.85/json.php";
    [self postDataWithUrl:url];
}


-(void) connectionDidFinishLoading:(NSURLConnection *) connection
{
    NSString *response =[[NSString alloc] initWithData:_httpData encoding:NSUTF8StringEncoding];
    NSLog(@"%@", response);
}

-(void) connection:(NSURLConnection *) conn didReceiveData:(NSData *)data
{
    [_httpData appendData:data];
    
}


-(void) postDataWithUrl:(NSString *) urlString
{
    _httpData = [[NSMutableData alloc] init];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
    [request setHTTPMethod:@"POST"];
    
    _connection = [[NSURLConnection alloc] initWithRequest:request delegate:self startImmediately:YES];
}


@end


































