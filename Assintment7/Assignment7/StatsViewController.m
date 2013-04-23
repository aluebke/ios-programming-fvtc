//
//  StatsViewController.m
//  Assignment7
//
//  Created by student on 4/15/13.
//  Copyright (c) 2013 Cody Berndt. All rights reserved.
//

#import "StatsViewController.h"
#import "BingoGame.h"
#import "gamesViewController.h"


@interface StatsViewController ()

@end

@implementation StatsViewController

@synthesize timeLabel, winCountLabel, winLimitLabel, maxPlayrsLabel, spotsLeftLabel;


-(void) SetBingoGame:(BingoGame *)game
{
    _GameData = game;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [timeLabel setText:[_GameData created_date]];
    [winLimitLabel setText:[_GameData win_limit]];
    [winCountLabel setText:[_GameData win_count]];
    [maxPlayrsLabel setText:[_GameData user_limit]];
    int userCount = [[_GameData user_count] intValue];
    int userLimit = [[_GameData user_limit]intValue];
    int sportsleft = userLimit-userCount;
    [spotsLeftLabel setText:[NSString stringWithFormat:@"%i", sportsleft]];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)ButtonJoinGameClickeds:(id)sender
{
   
    NSString *url =@"http://bingo.humboldttechgroup.com:1111/?cmd=joingame";
    [self postDataWithUrl:url];
    
}

-(void) LoadGameBoard
{
    gamesViewController *Game = [[gamesViewController alloc]init];
    [Game BuildGameData:_GameBoard];
    [self.navigationController pushViewController:Game animated:YES];
}


//web server boiler plate
-(void) postDataWithUrl:(NSString *) urlString
{
    _httpdata = [[NSMutableData alloc]init];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    [request setHTTPMethod:@"POST"];
    NSMutableString * postBody = [[NSMutableString alloc]init];
    //build out the json string
    NSString *timeStamp = [self getCurrentDateUTC];
    NSString *gameid = [_GameData game_id];
    NSString *userid = @"16";
    [postBody appendFormat:@"{\"timestamp\": \"%@\",", timeStamp];
    [postBody appendFormat:@"\"game_id\": \"%@\",", gameid];
    [postBody appendFormat:@"\"user_id\":\"%@\"}", userid];
    //json build end
    
    
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
        _GameBoard = [json objectForKey:@"board"];
        [self LoadGameBoard];
    }
    else
    {
        NSLog(@"Server Error - GetAllGames");
    }
}
    
    //gets timestamp string. decimal dropped-nothing more.
-(NSString *)getCurrentDateUTC
    {
        float fseconds = [[NSDate date] timeIntervalSince1970];
        int iseconds = (int) floor(fseconds);
        NSString *t =  [NSString stringWithFormat:@"%i", iseconds];
        return t;
    }

@end
