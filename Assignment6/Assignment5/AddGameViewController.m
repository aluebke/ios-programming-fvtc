//
//  AddGameViewController.m
//  Assignment5
//
//  Created by student on 3/4/13.
//  Copyright (c) 2013 Adam Luebke. All rights reserved.
//

#import "AddGameViewController.h"
#import "gameItem.h"

@interface AddGameViewController ()

@end

@implementation AddGameViewController

@synthesize TitleField, PlatformField, GeanraField;

-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [TitleField resignFirstResponder];
    [PlatformField resignFirstResponder];
    [GeanraField resignFirstResponder];
}

//Getter and setter for Array
-(void) setGameItems: (NSMutableArray *) items
{
    _gameItems = items;
}
-(NSMutableArray *)GameItems
{
    return _gameItems;
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)AddButtonClick:(id)sender
{
    //Add to the data source
    gameItem *tempGame = [[gameItem alloc]init];
    [tempGame setTitle:[TitleField text]];
    [tempGame setGameSystem:[PlatformField text]];
    [tempGame setGeanra:[GeanraField text]];
    [_gameItems addObject:tempGame];
    
    [[self presentingViewController]dismissViewControllerAnimated:YES completion:nil];
    
}

- (IBAction)CancelButtonClick:(id)sender
{
    [[self presentingViewController]dismissViewControllerAnimated:YES completion:nil];
}
- (void)viewDidUnload {
    [self setTitleField:nil];
    [self setPlatformField:nil];
    [self setGeanraField:nil];
    [super viewDidUnload];
}

@end
