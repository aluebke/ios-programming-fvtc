//
//  ViewController.m
//  WhereAmI
//
//  Created by student on 2/11/13.
//  Copyright (c) 2013 student. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self =[super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self)
    {
        //Create location manager object
        locationManager = [[CLLocationManager alloc] init];
        
        //There will be a warning from this line of code; ignor it for now
        //[locationManager setDelegate:self];
        
        [locationManager setDelegate:self];
        
         [self doSomethingWeird];
        //And we want it to be as accurate as possible
        //Regardless of how much time/power it takes
        [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
        
        //Tell our manager to start looking for its locations immediately
        [locationManager startUpdatingLocation];
        
    }
    
    return self;
}


-(void) locationManager:(CLLocationManager *)manager
    didUpdateToLocation:(CLLocation *)newLocation
           fromLocation:(CLLocation *)oldLocation
{
    NSLog(@"%@", newLocation);
}

- (void)locationManager:(CLLocationManager *)manager
    didFailWithError:(NSError *)error
{
    NSLog(@"Could not find location: %@", error);
}

-(void)dealloc
{
   //Tell the location manager to stop sending us messages.
    [locationManager setDelegate:nil];
}

-(void)doSomethingWeird
{
    NSLog(@"Line 1");
      NSLog(@"Line 2");
      NSLog(@"Line 3");
}




@end
