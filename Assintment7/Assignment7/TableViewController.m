//
//  TableViewController.m
//  Assignment7
//
//  Created by student on 4/22/13.
//  Copyright (c) 2013 Cody Berndt. All rights reserved.
//

#import "TableViewController.h"
#import "StatsViewController.h"
#import "BingoGame.h"

@implementation TableViewController

-(id) init
{
    self = [super init];
    if (self)
    {
        _GameCount = [[NSMutableArray alloc] init];
        [self ServerGetAllGame];
    }
    return self;
}

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
    BingoGame *game = [_GameCount objectAtIndex:[indexPath row]];
    [Game SetBingoGame:game];
    [self.navigationController pushViewController:Game animated:YES];
    
    
    
}

//url fetch to get games from server
-(void) ServerGetAllGame
{
    NSString *URLallGames = @"http://bingo.humboldttechgroup.com:1111/?cmd=allgames";
    [self postDataWithUrl:URLallGames];
}

//web server boiler plate
-(void) postDataWithUrl:(NSString *) urlString
{
    _httpdata = [[NSMutableData alloc]init];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    [request setHTTPMethod:@"POST"];
    NSString *postBody =@"";
    NSData *postData = [postBody dataUsingEncoding:NSUTF8StringEncoding];
    [request setHTTPBody:postData];
    _connection =[[NSURLConnection alloc] initWithRequest:request delegate:self startImmediately:YES];
}

-(void) connection:(NSURLConnection *) conn didReceiveData:(NSData *)data
{
    [_httpdata appendData:data];
}

//takes json array.  builds into _gamecount full of bingogame Class
-(void) connectionDidFinishLoading:(NSURLConnection *) connection
{
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:_httpdata options:kNilOptions error:Nil];
    if ([[json objectForKey:@"status"] isEqualToString:@"ok"])
    {
        NSLog(@"GetAllGames - OK");
        NSArray *games = [json objectForKey:@"games"];
        _Games = games;
        [_GameCount removeAllObjects];
        for (int i = 0; i < games.count; i++)
        {
            BingoGame *temp = [[BingoGame alloc] init];
            [temp setCreated_date:[games objectAtIndex:i][@"created_date"]];
            [temp setGame_id:[games objectAtIndex:i][@"game_id"]];
            [temp setWin_limit:[games objectAtIndex:i][@"win_limit"]];
            [temp setWin_count:[games objectAtIndex:i][@"win_count"]];
            [temp setUser_count:[games objectAtIndex:i][@"user_count"]];
            [temp setUser_limit:[games objectAtIndex:i][@"user_limit"]];
            [_GameCount addObject:temp];
        }
        UITableView *view = (UITableView *)[self view];
        [view reloadData];
    }
    else
    {
        NSLog(@"Server Error - GetAllGames");
    }
}

@end
