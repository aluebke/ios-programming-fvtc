//
//  Assignemtn3ViewController.m
//  Assignment 3
//
//  Created by student on 1/28/13.
//  Copyright (c) 2013 student. All rights reserved.
//

#import "Assignemtn3ViewController.h"

@interface Assignemtn3ViewController ()

@end

@implementation Assignemtn3ViewController

@synthesize grade1TextField, grade2TextField, grade3TextField, grade4TextField, grade5TextField, lblResult;

-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [grade1TextField resignFirstResponder];
    [grade2TextField resignFirstResponder];
    [grade3TextField resignFirstResponder];
    [grade4TextField resignFirstResponder];
    [grade5TextField resignFirstResponder];
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

- (IBAction)btnSubmit:(id)sender {
    
    float firstGrade = [[grade1TextField text]intValue];
    float secondGrade = [[grade2TextField text]intValue];
    float thirdGrade = [[grade3TextField text] intValue];
    float fourthGrade = [[grade4TextField text]intValue];
    float fithGrade = [[grade5TextField text]intValue];
    
    float score =[self getTotal:firstGrade withSecondNumber:secondGrade withThirdNumber:thirdGrade withFourthNumber:fourthGrade withFirthNumber:fithGrade];
    
    NSString *gradeLetter = [self getGradeLetter:score];
    
    [lblResult setText:gradeLetter];
    
    
}

-(float) getTotal:(float) firstGrade withSecondNumber:(float) secondGrade withThirdNumber:(float) thirdGrade withFourthNumber:(float) fourthGrade withFirthNumber:(float) firthGrade
{
    float score = (firstGrade + secondGrade + thirdGrade + fourthGrade + firthGrade)/5;
    
   // NSString *gradeLetter = [[NSString alloc] init];
    
    return score;
    
}

-(NSString *) getGradeLetter:(float) score
{
    
    int (switchValue) = score * 100;
    NSString *gradeLetter = [[NSString alloc] init];
    
    switch (switchValue) {
        case 9500 ... 10000:
            gradeLetter=@"A";
            break;
        case 9200 ... 9499:
            gradeLetter=@"A-";
            break;
        case 9000 ... 9199:
            gradeLetter=@"B+";
            break;
        case 8800 ... 8999:
            gradeLetter=@"B";
            break;
        case 8600 ... 8799:
            gradeLetter=@"B-";
            break;
        case 8300 ... 8599:
            gradeLetter=@"C+";
            break;
        case 8000 ... 8299:
            gradeLetter=@"C";
            break;
        case 7700 ... 7999:
            gradeLetter=@"C-";
            break;
        case 7500 ... 7699:
            gradeLetter=@"D+";
            break;
        case 7200 ... 7499:
            gradeLetter=@"D";
            break;
        case 7000 ... 7199:
            gradeLetter=@"D-";
            break;
        default:
            gradeLetter=@"F";
            break;
            
            
    }
            return gradeLetter;
}

    
@end
