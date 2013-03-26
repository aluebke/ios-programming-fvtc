//
//  gameUITableViewController.m
//  Assignment5
//
//  Created by student on 3/4/13.
//  Copyright (c) 2013 Adam Luebke. All rights reserved.
//

#import "gameUITableViewController.h"
#import "AddGameViewController.h"
#import "gameItem.h"

@implementation gameUITableViewController

//include HeaderView to display buttons at the top.
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    return [self HeaderView];
}
-(UIView *) HeaderView
{
    if (!_HeaderView)
    {
        [[NSBundle mainBundle] loadNibNamed:@"HeaderView" owner:self options:Nil];
    }
    return _HeaderView;
}

//What does init do?
//Initializes default values


-(id) init
{
    self = [super init];
    if (self)
    {
        //sets selected index to 'unselect' value.
        //Also, dummy datas.
        _SelectedIndex = -1;
        _gameList = [[NSMutableArray alloc] init];
        gameItem *temp = [[gameItem alloc] init];
        [temp setTitle:@"Romance of the Three Kingdoms"];
        [temp setGameSystem:@"SNES"];
        [temp setGeanra:@"Strategy"];
        [_gameList  addObject:temp];
        gameItem *temp2 = [[gameItem alloc] init];
        [temp setTitle:@"Nobonagas Ambition"];
        [temp setGameSystem:@"NES"];
        [temp setGeanra:@"Strategy"];;
        [_gameList addObject:temp2];
        
    }
    return self;
}

//loads every time view appears.  (refreshes table view)
-(void)viewDidAppear:(BOOL)animated
{
    UITableView *View = (UITableView *)[self view];
    [View reloadData];
    _SelectedIndex = -1;
}


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


- (IBAction)EditButtonClick:(id)sender {
}
@end
