//
//  bingoViewController.h
//  bingoBoard
//
//  Created by student on 4/8/13.
//  Copyright (c) 2013 student. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface bingoViewController : UIViewController
{
    NSMutableArray *_GameList;
    NSInteger _SelectedIndex;
}

-(void) SetSelectedIndex:(NSInteger) index;
-(void) SetGameList:(NSMutableArray *) array;

@end
