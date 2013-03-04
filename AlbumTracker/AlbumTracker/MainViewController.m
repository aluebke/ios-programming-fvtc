//
//  MainViewController.m
//  AlbumTracker
//
//  Created by student on 2/25/13.
//  Copyright (c) 2013 student. All rights reserved.
//

#import "MainViewController.h"
#import "NewAlbumViewController.h"
#import "AlbumItem.h"

@interface MainViewController ()

@end

@implementation MainViewController

@synthesize ActionPicker;

-(void) viewDidAppear:(BOOL)animated
{
    //view is visible again
    NSLog(@"ViewDidAppear %@", _albumItems);
    [ActionPicker reloadComponent:0];
    
}



//Picker Info (Same for all pickers)
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [_albumItems count];
}

-(NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2;
}

-(NSString *) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    //return [_albumItems objectAtIndex:row];
    AlbumItem *tempAlbum = [_albumItems objectAtIndex:row];
    return [tempAlbum Title];
    
}

//End Picker Info

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        NSLog(@"InitWithNibName MainViewController");
        _albumItems = [[NSMutableArray alloc]init];
       // [_albumItems addObject:@"The White Album"];
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    NSLog(@"ViewDidLoad MainViewController");
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)AddButtonClick:(id)sender
{
    NewAlbumViewController  *navc = [[NewAlbumViewController alloc] init];
    
    [navc setAlbumItems:_albumItems];
    
    UINavigationController *navController = [[UINavigationController alloc]initWithRootViewController:navc];

    
    [self presentViewController:navController animated:YES completion:nil];

}

- (IBAction)DeleteButtonClick:(id)sender
{
    int selectedIndex = [ActionPicker selectedRowInComponent:0];
    
    //check the kength of the array
    if ([_albumItems count] > 0)
    {
    
        [_albumItems removeObjectAtIndex:selectedIndex];
        [ActionPicker reloadComponent:0];
    }
}
@end
