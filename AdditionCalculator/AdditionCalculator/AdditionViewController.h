//
//  AdditionViewController.h
//  AdditionCalculator
//
//  Created by student on 1/28/13.
//  Copyright (c) 2013 student. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AdditionViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *firstNumberField;

@property (weak, nonatomic) IBOutlet UITextField *secondNumberFIeld;
@property (weak, nonatomic) IBOutlet UILabel *thirdNumberField;
@property (weak, nonatomic) IBOutlet UILabel *lblResult;

//@property (weak, nonatomic) IBOutlet UITextField *thirdNumberField;
@property (strong, nonatomic) IBOutlet UILabel *messageLabel;

- (IBAction)totalButton:(id)sender;


-(int) getTotal:(int) firstNumber withSecondNumber:(int) secondNumber;
-(int) getTotal:(int)firstNumber withSecondNumber:(int)secondNumber withThirdNumber:(int)thirdNumber;

@end
