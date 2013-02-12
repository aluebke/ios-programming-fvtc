//
//  ViewController.m
//  odemeter
//
//  Created by student on 2/11/13.
//  Copyright (c) 2013 student. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController;

@synthesize pickerView;

-(void) pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{

    //Fires when a new row is selected.
    NSLog(@"Row:%i Component:%i",row,component);
    
    
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    //will return the number of rows displayed in the pciker
    return [rNumbers count];
    
}

-(NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    
    //will return the number of columns
    return 3;
    
}

-(NSString *) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    
    int displayNumber = [[rNumbers objectAtIndex:row]intValue];
    

    NSString *display = [NSString stringWithFormat:@"%i",displayNumber];
    
    return display;
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    rNumbers = [[NSArray alloc] initWithObjects: [NSNumber numberWithInt:0],
                                                [NSNumber numberWithInt:1],
                                                [NSNumber numberWithInt:2],
                                                [NSNumber numberWithInt:3],
                                                [NSNumber numberWithInt:4],
                                                [NSNumber numberWithInt:5],
                                                [NSNumber numberWithInt:6],
                                                [NSNumber numberWithInt:7],
                                                [NSNumber numberWithInt:8],
                                                [NSNumber numberWithInt:9],
                nil];
    
    
}

-(void) tick:(NSTimer *) timer
{

    
    counter ++;
    
    [pickerView selectRow:counter %10 inComponent:2 animated:YES];
    [pickerView selectRow:(counter/10) %10 inComponent:1 animated:YES];
    [pickerView selectRow:(counter/100) %10 inComponent:0 animated:YES];
    
}


- (void) startTimer
{
    [NSTimer scheduledTimerWithTimeInterval:1
                                     target:self
                                   selector:@selector(tick:)
                                   userInfo:nil
                                    repeats:YES];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addButtonClick:(id)sender {
    
    [self startTimer];
    
    
}
@end
