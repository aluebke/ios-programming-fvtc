//
//  MemoryDataViewController.m
//  MemoryCardGame
//
//  Created by student on 4/29/13.
//  Copyright (c) 2013 student. All rights reserved.
//

#import "MemoryDataViewController.h"
#import "GameBoardDataViewController.h"

@interface MemoryDataViewController ()

@end

@implementation MemoryDataViewController



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

- (IBAction)beginButtonClicked:(id)sender
{
    GameBoardDataViewController *Game =[[GameBoardDataViewController alloc]init];
    
    [self.navigationController pushViewController:Game animated:YES];
}
@end
