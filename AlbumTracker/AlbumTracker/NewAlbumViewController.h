//
//  NewAlbumViewController.h
//  AlbumTracker
//
//  Created by student on 2/25/13.
//  Copyright (c) 2013 student. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewAlbumViewController : UIViewController
{
    NSMutableArray *_albumItems;
}
- (IBAction)AddButtonClick:(id)sender;
- (IBAction)CancelButtonClick:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *ArtistField;

@property (weak, nonatomic) IBOutlet UITextField *NameField;

//Getter and setter for Array to pass to NewAlbumViewController

-(void) setAlbumItems: (NSMutableArray *) items;
-(NSMutableArray *) AlbumItems;

@end
