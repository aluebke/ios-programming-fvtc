//
//  lightViewController.h
//  Lights
//
//  Created by student on 4/1/13.
//  Copyright (c) 2013 student. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface lightViewController : UIViewController
{
    NSURLConnection *_connection;
    NSMutableData *_httpData;
}




- (IBAction)ActionButtonClick:(id)sender;
- (IBAction)lightSwitchChanged:(id)sender;

@end
