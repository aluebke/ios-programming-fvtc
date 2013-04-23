//
//  TableViewController.h
//  Assignment7
//
//  Created by student on 4/22/13.
//  Copyright (c) 2013 Cody Berndt. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TableViewController :UITableViewController
{
    NSMutableArray *_GameCount;
    NSURLConnection *_connection;
    NSMutableData *_httpdata;
    NSArray *_Games;
    
}
@end
