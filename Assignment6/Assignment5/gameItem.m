//
//  gameItem.m
//  Assignment5
//
//  Created by student on 3/4/13.
//  Copyright (c) 2013 Adam Luebke. All rights reserved.
//

#import "gameItem.h"

@implementation gameItem

@synthesize Title,GameSystem,Geanra;


-(NSString *) description
{
    NSString *descriptionString = [NSString stringWithFormat:@"Title: %@ GameSystem: %@ Geanra: %@ ",Title, GameSystem,Geanra];
    
    return descriptionString;
}

@end
