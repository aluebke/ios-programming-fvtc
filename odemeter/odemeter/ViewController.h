//
//  ViewController.h
//  odemeter
//
//  Created by student on 2/11/13.
//  Copyright (c) 2013 student. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>
{
    
    NSArray *rNumbers;
    int counter;
    
}

- (IBAction)addButtonClick:(id)sender;

@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;

@end
