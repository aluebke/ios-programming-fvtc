//
//  helloViewController.h
//  HelloWorld
//
//  Created by student on 1/14/13.
//  Copyright (c) 2013 Adam Luebke FVTC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface helloViewController : UIViewController
{

    
    __weak IBOutlet UILabel *lblMessage;
    
}
@property (weak, nonatomic) IBOutlet UILabel *lblHelloWorld;
@end
