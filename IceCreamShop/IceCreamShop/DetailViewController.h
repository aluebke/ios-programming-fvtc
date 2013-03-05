//
//  DetailViewController.h
//  IceCreamShop
//
//  Created by student on 3/4/13.
//  Copyright (c) 2013 student. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
{
    NSMutableArray *_IceCreamFlavors;
    NSInteger _SelectedIndex;

}

//Set Property for _IceCreamFlavors
-(void) SetIceCreamFlavors:(NSMutableArray *) array;
-(void) SetSelectedIndex:(NSInteger) index;

- (IBAction)submitButtonClick:(id)sender;
- (IBAction)cancelButtonClick:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *FlavorField;



@end
