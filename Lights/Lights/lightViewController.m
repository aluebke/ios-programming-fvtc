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

int *switchState =0;


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

- (IBAction)lightSwitchChanged:(id)sender
{
    if (*switchState==0)
    {
       *switchState =1;
    }else
        *switchState =0;
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
    NSMutableString *postBody = [[NSMutableString alloc] init];
    
    NSString *key = @"492468e3eba1cd5b413e6e6bc9e296bb2";
    NSString *secret = @"23456123456";
    NSString *timestamp = @"2345678";
    NSString *light_id=@"2";
    NSString *state =[NSString stringWithFormat:@"%d",switchState];
    
    //where we build it
    
    
    [postBody appendString:@"{  "];
    [postBody appendFormat:@"\"key\": \"%@\",", key];
    [postBody appendFormat:@"\"secret\": \"%@\",", secret];
    [postBody appendFormat:@"\"timestamp\": \"%@\",", timestamp];
    
    //Open brace for light element
    [postBody appendString:@"\"light\":{"];
    [postBody appendFormat:@"\"id\": \"%@\",", light_id];
    [postBody appendFormat:@"\"state\": \"%@\"", state];
    //Close brace for light element
    [postBody appendString:@"}  "];
    
    
    
    //Close Brace for outside json
    [postBody appendString:@"}  "];
    
    
    
    NSLog(@"%@", postBody);
    NSData *postData = [postBody dataUsingEncoding:NSUTF8StringEncoding];
    [request setHTTPBody:postData];
    _connection = [[NSURLConnection alloc] initWithRequest:request delegate:self startImmediately:YES];
    
    
    
    
}


-(NSString *)getTimestamp
{
    float fseconds = [[NSDate date] timeIntervalSince1970];
    fseconds = fseconds /100;
    fseconds = roundf(fseconds);
    
    
    int seconds = (int) floor(fseconds);
    
   
    
    
    NSString *t =  [NSString stringWithFormat:@"%i", seconds ];
    return t;
}



@end


































