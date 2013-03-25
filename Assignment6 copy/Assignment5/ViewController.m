//
//  ViewController.m
//  Assignment5
//
//  Created by Adam Luebke on 3/1/13.
//  Copyright (c) 2013 Adam Luebke. All rights reserved.
//

#import "ViewController.h"
#import "gameItem.h"
#import "AddGameViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize actionPicker;


-(void) viewDidAppear:(BOOL)animated
{
    //view is visible again
    NSLog(@"ViewDidAppear %@", _gameItems);
    [actionPicker reloadComponent:0];
}

//Enable Picker Info (same for all pickers)
    //Load Rows
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [_gameItems count];
}

-(NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

-(NSString *) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    gameItem  *tempGame = [_gameItems objectAtIndex:row];
    return [tempGame Title];
}

//End Picker Info


//Load the mutable array

-(id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        _gameItems = [[NSMutableArray alloc]init];
        gameItem *gameOne = [[gameItem alloc] init];
        [gameOne setTitle:@"OgreBattle"];
        [gameOne setGameSystem:@"SNES"];
        [gameOne setGeanra:@"Strategy"];
        [_gameItems addObject:gameOne];
        
        
       
        gameItem *gameTwo = [[gameItem alloc] init];
        [gameTwo setTitle:@"Romance of the Three Kingdoms IV"];
        [gameTwo setGameSystem:@"SNES"];
        [gameTwo setGeanra:@"Strategy"];
        [_gameItems addObject:gameTwo];
        
        gameItem *gameThree = [[gameItem alloc] init];
        [gameThree setTitle:@"Battle Toads"];
        [gameThree setGameSystem:@"SNES"];
        [gameThree setGeanra:@"Platformer"];
        [_gameItems addObject:gameThree];
        
        
       // [_gameItems addObject:@"Romance of the Three Kingdoms IV"];
       // [_gameItems addObject:@"Battle Toads"];
    }
    return self;
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

- (IBAction)addButtonClick:(id)sender
{
    AddGameViewController *agvc = [[AddGameViewController alloc]init];
    [agvc setGameItems:_gameItems];
    
    UINavigationController *navController = [[UINavigationController alloc]initWithRootViewController:agvc];
    [self presentViewController:navController animated:YES completion:nil];
}

- (IBAction)deleteButtonClick:(id)sender
{
    int selectedIndex = [actionPicker selectedRowInComponent:0];
    //check the length of the array
    if ([_gameItems count] >0)
    {
        [_gameItems removeObjectAtIndex:selectedIndex];
        [actionPicker reloadComponent:0];
    }
}
@end
