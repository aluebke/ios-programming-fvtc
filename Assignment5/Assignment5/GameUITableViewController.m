//
//  gameUITableViewController.m
//  Assignment5
//
//  Created by student on 3/4/13.
//  Copyright (c) 2013 Adam Luebke. All rights reserved.
//

#import "gameUITableViewController.h"
#import "AddGameViewController.h"

@implementation gameUITableViewController


-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (_deleteMode)
    {
        //delete selected row and update
        [_gameList removeObjectAtIndex:[indexPath row]];
        UITableView *view =(UITableView *)[self view];
        [view reloadData];
        _deleteMode = NO;
    }
    else
    {
        //Will call AddGameViewController
      //  AddGameViewController * detail =[[AddGameViewController alloc]init];
       // [detail setGameItems:_gameList];
        
        
    }
}


@end
