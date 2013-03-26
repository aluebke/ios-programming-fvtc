//
//  PracticalViewController.m
//  Practical22
//
//  Created by student on 3/25/13.
//  Copyright (c) 2013 student. All rights reserved.
//

#import "PracticalViewController.h"
#import "ItemStore.h"

@interface PracticalViewController ()

@end

@implementation PracticalViewController

-(void) SetMenuItems: (NSMutableArray *) array
{
    _AllMenuItems = array;
}

-(void) SetSelectedIndex:(NSInteger) index
{
    _SelectedIndex = index;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ButtonOrderClick:(id)sender {
}

- (IBAction)ButtonMenuClick:(id)sender {
}
@end
