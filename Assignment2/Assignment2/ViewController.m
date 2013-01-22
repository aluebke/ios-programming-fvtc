//
//  ViewController.m
//  Assignment2
//
//  Created by student on 1/21/13.
//  Copyright (c) 2013 student. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize lblAge, btnSubmit, readySwitch, ageSlider;


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

- (IBAction)firstNameExit:(id)sender {
}

- (IBAction)lastNameExit:(id)sender {
}

- (IBAction)ageSliderChanged:(id)sender {
    
    float fSlide = [ageSlider value];
    int rSlideValue = (int) roundf(fSlide);
    
    NSString *labelString = [[NSString alloc]initWithFormat:@"%i", rSlideValue ];
    
    [lblAge setText:labelString];
    
    NSLog(@"Quantity Slider value = %f", fSlide);
    
}
- (IBAction)readySwitchChanged:(id)sender {
    
    if([readySwitch isOn])
    {
        [btnSubmit setEnabled:YES];
    }
    else
    {
        [btnSubmit setEnabled:NO];
    }
    
}
- (IBAction)btnSubmitClick:(id)sender {
    
    NSLog(@"btnSubmitClick was pushed");

}
@end
