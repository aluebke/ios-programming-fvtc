//
//  ViewController.m
//  Assignment 4
//
//  Created by student on 2/11/13.
//  Copyright (c) 2013 student. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize pickerView;

-(void) pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSLog(@"Row:%i Component:%i", row,component);
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    //will return the number of rows displayed in the pciker
    return [arrNumbers count];
    
}


-(NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    
    //will return the number of columns
    return 3;
    
}

-(NSString *) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    
    int displayNumber = [[arrNumbers objectAtIndex:row]intValue];
    
    
    NSString *display = [NSString stringWithFormat:@"%i",displayNumber];
    
    return display;
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    arrNumbers = [[NSArray alloc] initWithObjects: [NSNumber numberWithInt:0],
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
    
    iOne = 3;
    iTwo = 1;
    iThree = 4;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tryButton:(id)sender {
    iTOne = [pickerView selectedRowInComponent:0];
    iTTwo = [pickerView selectedRowInComponent:1];
    iTThree = [pickerView selectedRowInComponent:2];
    
    if(iOne==iTOne && iTwo==iTTwo &&iThree == iTThree)
    {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Success" message:@"You have opened the empty safe." delegate:self cancelButtonTitle:@"Close" otherButtonTitles:@"Ok"   , nil];
        [alert show];
     
        
    }else
    {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Failure!!" message:@"You have failed to open the safe." delegate:self cancelButtonTitle:@"Close" otherButtonTitles:@"Ok"   , nil];
        [alert show];
    }
}

- (IBAction)autoButton:(id)sender {
    
    [pickerView selectRow:3 inComponent:0 animated:YES];
    [pickerView selectRow:1 inComponent:1 animated:YES];
    [pickerView selectRow:4 inComponent:2 animated:YES];
}
@end
