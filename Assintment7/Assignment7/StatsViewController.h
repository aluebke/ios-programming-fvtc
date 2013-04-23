//
//  StatsViewController.h
//  Assignment7
//
//  Created by student on 4/15/13.
//  Copyright (c) 2013 Cody Berndt. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BingoGame.h"

@interface StatsViewController : UIViewController
{
    NSURLConnection *_connection;
    NSMutableData  *_httpdata;
    BingoGame *_GameData;
    NSString  *_GameBoard;
}
- (IBAction)ButtonJoinGameClickeds:(id)sender;
-(void) SetBingoGame:(BingoGame*) game;

@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *winCountLabel;
@property (weak, nonatomic) IBOutlet UILabel *winLimitLabel;
@property (weak, nonatomic) IBOutlet UILabel *maxPlayrsLabel;
@property (weak, nonatomic) IBOutlet UILabel *spotsLeftLabel;

@end
