//
//  AddGameViewController.h
//  Assignment5
//
//  Created by student on 3/4/13.
//  Copyright (c) 2013 Adam Luebke. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddGameViewController : UIViewController
{
    NSMutableArray *_gameItems;
}
- (IBAction)AddButtonClick:(id)sender;
- (IBAction)CancelButtonClick:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *TitleField;
@property (weak, nonatomic) IBOutlet UITextField *PlatformField;
@property (weak, nonatomic) IBOutlet UITextField *GeanraField;


-(void) setGameItems: (NSMutableArray *) items;
-(NSMutableArray *)GameItems;

@end
