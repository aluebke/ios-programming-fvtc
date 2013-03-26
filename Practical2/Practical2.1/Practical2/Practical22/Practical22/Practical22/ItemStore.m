//
//  ItemStore.m
//  Practical2
//
//  Created by student on 3/25/13.
//  Copyright (c) 2013 student. All rights reserved.
//

#import "ItemStore.h"

@implementation ItemStore


-(id) init
{
    self  = [super init];
    if (self) {
        _AllMenuItems = [[NSMutableArray alloc] init];
        [_AllMenuItems addObject:@"Hamburger"];
        [_AllMenuItems addObject:@"Salad"];
        [_AllMenuItems addObject:@"Pasta"];
        
    }
    return self;
    
}


-(NSInteger) tableView:(UITableView *) tableView numberOfRowsInSection:(NSInteger)section:
    (NSInteger)section
{
    return [_AllMenuItems count];
}

//+(ItemStore *) SharedStore
//{
   // static ItemStore *sharedStore = nil;
    //if (!sharedStore) {
      //  sharedStore = [[super allocWithZone:nil] init];
    //}
  //  return sharedStore;
    
//}

@end
