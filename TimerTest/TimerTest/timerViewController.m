//
//  timerViewController.m
//  TimerTest
//
//  Created by student on 4/8/13.
//  Copyright (c) 2013 student. All rights reserved.
//

#import "timerViewController.h"

@interface timerViewController ()

@end

@implementation timerViewController

@synthesize timerLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _Timer =[NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(tick) userInfo:nil repeats:YES];
    
    
}


-(void) tick
{
    
    _counter++;
    [timerLabel setText:[NSString stringWithFormat:@"%i", _counter]];
    

    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
