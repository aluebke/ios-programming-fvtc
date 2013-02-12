//
//  ViewController.h
//  Practical1
//
//  Created by student on 2/11/13.
//  Copyright (c) 2013 student. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    
    float fSlide;
    int SliderValue;
    
}
@property (weak, nonatomic) IBOutlet UITextField *txtArtist;

@property (weak, nonatomic) IBOutlet UITextField *txtName;
@property (weak, nonatomic) IBOutlet UISlider *outletvolumeslider;

- (IBAction)volumeSlider:(id)sender;
- (IBAction)submitbutton:(id)sender;
@end
