//
//  ViewController.h
//  bookOrder
//
//  Created by student on 1/21/13.
//  Copyright (c) 2013 student. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)btnSubmit:(id)sender;
- (IBAction)physicalSwitchChanged:(id)sender;
- (IBAction)digitalSwitchCHanged:(id)sender;
- (IBAction)quantitySliderChanged:(id)sender;

- (IBAction)nameFieldExit:(id)sender;

@property (weak, nonatomic) IBOutlet UISwitch *physicalSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *digitalSwitch;

@property (weak, nonatomic) IBOutlet UILabel *labelQuantity;
@property (weak, nonatomic) IBOutlet UISlider *quantitySlider;
@property (weak, nonatomic) IBOutlet UIButton *submitButton;

@end
