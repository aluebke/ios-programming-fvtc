//
//  assignViewController.h
//  Assignment7
//
//  Created by student on 4/8/13.
//  Copyright (c) 2013 Cody Berndt. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface gamesViewController : UIViewController
{
    NSURLConnection *_connection;
    NSMutableData *_httpdata;
    NSArray *_gameArray;
    NSTimer *_Timer;
}

-(void) BuildGameData: (NSString *) ArrayString;

@end
