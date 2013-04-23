//
//  GamesViewController.m
//  Assignment7
//
//  Created by student on 4/22/13.
//  Copyright (c) 2013 Cody Berndt. All rights reserved.
//

#import "GamesViewController.h"
#import "StatsViewController.h"

@interface GamesViewController ()

@end

@implementation GamesViewController

//number or rows in table
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return  [_GameCount count];
}


//fills table view with game list up to game count
-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

    UITableViewCell *Cell = [[UITableViewCell alloc] initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:@"UITableViewCell"];
    NSString *display = [NSString stringWithFormat:@"Game %i", ([indexPath row]+1)];
    [[Cell textLabel] setText:display];
    return Cell;
}


-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    StatsViewController *Game =[[StatsViewController alloc] init];
    [self.navigationController pushViewController:Game animated:YES];
}


@end
