//
//  ViewController.h
//  WhereAmI
//
//  Created by student on 2/11/13.
//  Copyright (c) 2013 student. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController : UIViewController<CLLocationManagerDelegate>
{
    CLLocationManager *locationManager;
}

-(void)doSomethingWeird;


@end
