//
//  ViewController.h
//  Assignment5
//
//  Created by Adam Luebke on 3/1/13.
//  Copyright (c) 2013 Adam Luebke. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>
{
    NSMutableArray *_gameItems;
}
- (IBAction)addButtonClick:(id)sender;
- (IBAction)deleteButtonClick:(id)sender;

@property (weak, nonatomic) IBOutlet UIPickerView *actionPicker;
@end
