//
//  Assignemtn3ViewController.h
//  Assignment 3
//
//  Created by student on 1/28/13.
//  Copyright (c) 2013 student. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Assignemtn3ViewController : UIViewController


@property (weak, nonatomic) IBOutlet UITextField *grade1TextField;
@property (weak, nonatomic) IBOutlet UITextField *grade2TextField;
@property (weak, nonatomic) IBOutlet UITextField *grade3TextField;
@property (weak, nonatomic) IBOutlet UITextField *grade4TextField;
@property (weak, nonatomic) IBOutlet UITextField *grade5TextField;


@property (weak, nonatomic) IBOutlet UILabel *lblResult;

-(float) getTotal:(float) firstGrade withSecondNumber:(float) secondGrade withThirdNumber:(float) thirdGrade withFourthNumber:(float) fourthGrade withFirthNumber:(float) firthGrade;

-(NSString *) getGradeLetter:(float) score;

- (IBAction)btnSubmit:(id)sender;



@end
