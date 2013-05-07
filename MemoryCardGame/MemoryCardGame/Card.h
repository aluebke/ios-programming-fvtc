//
//  Card.h
//  MemoryCardGame
//
//  Created by student on 4/29/13.
//  Copyright (c) 2013 student. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (nonatomic, retain)  NSString *_shape;
@property (nonatomic, retain)  NSString *_color;
@property (nonatomic, retain)  NSString *_borderColor;
@property (nonatomic, retain)  NSString *_cardID;
@property (nonatomic, retain)  NSString *_revealed;


@end
