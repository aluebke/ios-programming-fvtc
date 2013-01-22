//
//  ViewController.h
//  Assignment2
//
//  Created by student on 1/21/13.
//  Copyright (c) 2013 student. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)firstNameExit:(id)sender;
- (IBAction)lastNameExit:(id)sender;

- (IBAction)ageSliderChanged:(id)sender;
@property (weak, nonatomic) IBOutlet UISlider *ageSlider;


- (IBAction)readySwitchChanged:(id)sender;
@property (weak, nonatomic) IBOutlet UISwitch *readySwitch;

- (IBAction)btnSubmitClick:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *btnSubmit;

@property (weak, nonatomic) IBOutlet UILabel *lblAge;


@end
