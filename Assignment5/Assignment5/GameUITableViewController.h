//
//  gameUITableViewController.h
//  Assignment5
//
//  Created by student on 3/4/13.
//  Copyright (c) 2013 Adam Luebke. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface gameUITableViewController : NSObject
{
    NSMutableArray *_gameList;
    
    IBOutlet UIView *_HeaderView;
    BOOL _deleteMode;
    
}

-(UIView *) HeaderView;
-(IBAction)AddButtonClick:(id)sender;
-(IBAction)DeleteButtonClick:(id)sender;


@end
