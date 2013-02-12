//
//  ViewController.m
//  Practical1
//
//  Created by student on 2/11/13.
//  Copyright (c) 2013 student. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize txtArtist, txtName,outletvolumeslider;


-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [txtArtist resignFirstResponder];
    [txtName resignFirstResponder];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
  //  + (float)fSlide;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)volumeSlider:(id)sender {
    
    float fSlide = [outletvolumeslider value];
    int SliderValue = (int) roundf(fSlide);
    
  
    
   NSLog(@"The volume setting is %f", fSlide);
    
}

- (IBAction)submitbutton:(id)sender {
    
    NSString *artist = [txtArtist text];
    NSString *name = [txtName text];
    
    NSLog(@"The artist is %@", artist);
    NSLog(@"The song's name is %@", name);
    NSLog(@"The volume setting is %i", SliderValue);
    
}
@end
