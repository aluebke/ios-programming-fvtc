//
//  httpViewController.h
//  testhttp
//
//  Created by student on 3/25/13.
//  Copyright (c) 2013 student. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface httpViewController : UIViewController
{
    NSURLConnection *connection;
    NSMutableData *httpData;
    void (^completion) (void);
}
- (IBAction)TestButtonClick:(id)sender;

@end
