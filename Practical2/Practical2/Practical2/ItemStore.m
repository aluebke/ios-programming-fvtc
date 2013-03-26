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
    }
    return self;
    
}


+(ItemStore *) SharedStore
{
    static ItemStore *sharedStore = nil;
    if (!sharedStore) {
        sharedStore = [[super allocWithZone:nil] init];
    }
    return sharedStore;
    
}

@end
