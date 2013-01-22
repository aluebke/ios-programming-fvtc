//
//  ViewController.m
//  bookOrder
//
//  Created by student on 1/21/13.
//  Copyright (c) 2013 student. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize physicalSwitch,digitalSwitch,labelQuantity,quantitySlider, submitButton;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [submitButton setEnabled:YES];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnSubmit:(id)sender {
    
    NSLog(@"btnSubmit Clicked");
}

- (IBAction)physicalSwitchChanged:(id)sender {
    
    NSLog(@"physicalSwitchChanged");
    if ([physicalSwitch isOn])
    {
        [digitalSwitch setOn:NO animated:YES];
    }
    else
    {
        [digitalSwitch setOn:YES animated:YES];
    }

    
}

- (IBAction)digitalSwitchCHanged:(id)sender {
  
    NSLog(@"DigitalSwitchChanged");
    if ([digitalSwitch isOn])
    {
        [physicalSwitch setOn:NO animated:YES];
    }
    else
    {
        [physicalSwitch setOn:YES animated:YES];
    }
    
}

- (IBAction)quantitySliderChanged:(id)sender {
    //[labelQuantity setText:@[quantitySlider value] ];
    float fSlide = [quantitySlider value];
    int rSlideValue = (int) roundf(fSlide);
    
    NSString *labelString = [[NSString alloc]initWithFormat:@"%i", rSlideValue ];
    
    [labelQuantity setText:labelString];
    
    NSLog(@"Quantity Slider value = %f", fSlide);
    

    
}

- (IBAction)nameFieldExit:(id)sender {
}
@end
