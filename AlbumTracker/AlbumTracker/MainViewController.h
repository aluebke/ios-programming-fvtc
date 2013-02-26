//
//  MainViewController.h
//  AlbumTracker
//
//  Created by student on 2/25/13.
//  Copyright (c) 2013 student. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>
{
    NSMutableArray *_albumItems;
}



- (IBAction)AddButtonClick:(id)sender;
- (IBAction)DeleteButtonClick:(id)sender;


@property (weak, nonatomic) IBOutlet UIPickerView *ActionPicker;

@end
