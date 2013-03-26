//
//  ItemStore.h
//  Practical2
//
//  Created by student on 3/25/13.
//  Copyright (c) 2013 student. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Item.h"

@interface ItemStore : NSObject
{
    NSMutableArray *_AllMenuItems;
}

-(NSMutableArray *) AllMenuItems;
-(void) Add:(Item *) MenuItem;

+ (ItemStore *) SharedStore;

@end
