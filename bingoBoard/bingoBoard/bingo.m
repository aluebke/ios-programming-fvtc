//
//  bingo.m
//  bingoBoard
//
//  Created by student on 4/8/13.
//  Copyright (c) 2013 student. All rights reserved.
//

#import "bingo.h"
#import "bingoViewController.h"

@implementation bingo

-(void) viewDidAppear:(BOOL)animated
{
    UITableView *view = (UITableView *) [self view];
    [view reloadData];
}


-(id) init
{
    self = [super init];
    
    if(self)
    {
        //if properly initialized, do this code
        _GameList = [[NSMutableArray alloc]init];
        [_GameList addObject:@"Game 1"];
        [_GameList addObject:@"Game 2"];
        [_GameList addObject:@"Game 3"];
        [_GameList addObject:@"Game 4"];
        [_GameList addObject:@"Game 5"];
        
        
    }
    return self;
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_GameList count];
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableView *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"UITableViewCell"];
    
    NSString *display = [[NSString alloc] initWithString:[_GameList objectAtIndex:[indexPath row]]];
    [[cell textLabel] setText:display];
    
    return cell;
    
}











@end
