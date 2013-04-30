//
//  Entity.h
//  MotionData
//
//  Created by student on 4/29/13.
//  Copyright (c) 2013 student. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Entity : NSManagedObject

@property (nonatomic, retain) NSNumber * x;
@property (nonatomic, retain) NSNumber * y;
@property (nonatomic, retain) NSNumber * z;

@end
