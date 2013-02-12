//
//  ViewController.h
//  Assignment 4
//
//  Created by student on 2/11/13.
//  Copyright (c) 2013 student. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSArray *arrNumbers;
    int counter;
    int iOne;
    int iTwo;
    int iThree;
    
    int iTOne;
    int iTTwo;
    int iTThree;
}

@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;

- (IBAction)tryButton:(id)sender;
- (IBAction)autoButton:(id)sender;
@end
