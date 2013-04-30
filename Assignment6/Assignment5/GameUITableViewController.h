//
//  gameUITableViewController.h
//  Assignment5
//
//  Created by student on 3/4/13.
//  Copyright (c) 2013 Adam Luebke. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface gameUITableViewController : UITableViewController
{
    NSMutableArray *_gameList;
    
    IBOutlet UIView *_HeaderView;
    NSInteger _SelectedIndex;
    
}

-(UIView *) HeaderView;
-(IBAction)AddButtonClick:(id)sender;
-(IBAction)DeleteButtonClick:(id)sender;
- (IBAction)EditButtonClick:(id)sender;


@end
