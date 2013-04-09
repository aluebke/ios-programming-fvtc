//
//  timerViewController.h
//  TimerTest
//
//  Created by student on 4/8/13.
//  Copyright (c) 2013 student. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface timerViewController : UIViewController
{
    NSTimer *_Timer;
    NSInteger _counter;
}





@property (weak, nonatomic) IBOutlet UILabel *timerLabel;

@end
