//
//  Item.h
//  Practical2
//
//  Created by student on 3/25/13.
//  Copyright (c) 2013 student. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Item : NSObject

@property (nonatomic, retain) NSString *MenuItem;
@property (nonatomic, retain) NSString *Description;

-(id) initWithMenuItem:(NSString*)MItem withDescription: (NSString *) MDescription;

@end
