//
//  AdditionViewController.m
//  AdditionCalculator
//
//  Created by student on 1/28/13.
//  Copyright (c) 2013 student. All rights reserved.
//

#import "AdditionViewController.h"

@interface AdditionViewController ()

@end

@implementation AdditionViewController

@synthesize firstNumberField,secondNumberFIeld,lblResult,thirdNumberField, messageLabel;

-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"Touches ended");
    [firstNumberField resignFirstResponder];
    [secondNumberFIeld resignFirstResponder];
    
    
    
    
}

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

- (IBAction)totalButton:(id)sender {
    
    int firstNumber = [[firstNumberField text] intValue];
    int secondNumber = [[secondNumberFIeld text] intValue];
    int thirdNumber = [[thirdNumberField text] intValue];
    
  //  int total = firstNumber + secondNumber;
    
   int total =[self getTotal:firstNumber withSecondNumber:secondNumber];
  //  int total =[self getTotal:firstNumber withSecondNumber:secondNumber withThirdNumber:thirdNumber];

    NSString *totalString = [NSString stringWithFormat:@"%i", total];
    
    [lblResult setText:totalString];
    
    
    
    //Example for Case Select
    switch (total) {
        case 0 ... 20:
            [messageLabel setText:@"That is less then 21"];
            break;
        case 21 ...40:
            [messageLabel setText:@"That is between 20 and 41"];
        default:
            [messageLabel setText:@"That is greater then 40"];
            break;
    }
    
    
    

    
    
}



-(int) getTotal:(int) firstNumber withSecondNumber:(int) secondNumber
{
    int total = firstNumber + secondNumber;
    return total;
}

//-(int) getTotal:(int)firstNumber withSecondNumber:(int)secondNumber withThirdNumber:(int)thirdNumber;
//{
//    int total = firstNumber + secondNumber + thirdNumber;
//    return total;
//}
@end
