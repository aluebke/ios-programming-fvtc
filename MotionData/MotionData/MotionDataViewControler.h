//
//  MotionDataViewControler.h
//  MotionData
//
//  Created by student on 4/29/13.
//  Copyright (c) 2013 student. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MotionDataViewControler : UIView
{
    NSManagedObjectContext *_ManagedIbjectContext;
}

-(NSManagedObjectContext *) ManagedObjectContext;
-(void) SetManagedObjectContext:(

@end
