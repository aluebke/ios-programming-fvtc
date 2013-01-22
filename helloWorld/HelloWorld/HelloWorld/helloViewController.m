//
//  helloViewController.m
//  HelloWorld
//
//  Created by student on 1/14/13.
//  Copyright (c) 2013 Adam Luebke FVTC. All rights reserved.
//

#import "helloViewController.h"

@interface helloViewController ()

@end

@implementation helloViewController

@synthesize lblHelloWorld;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    [lblMessage setText:@"Goodbye"];
    
    [lblHelloWorld setText:@"Testing"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
