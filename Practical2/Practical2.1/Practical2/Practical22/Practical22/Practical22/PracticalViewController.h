//
//  PracticalViewController.h
//  Practical22
//
//  Created by student on 3/25/13.
//  Copyright (c) 2013 student. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PracticalViewController : UIViewController
- (IBAction)ButtonOrderClick:(id)sender;
- (IBAction)ButtonMenuClick:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *LabelItemName;
@property (weak, nonatomic) IBOutlet UILabel *LabelItemDescription;
@end
