//
//  GameBoardDataViewController.m
//  MemoryCardGame
//
//  Created by student on 4/29/13.
//  Copyright (c) 2013 student. All rights reserved.
//

#import "GameBoardDataViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "Card.h"


@interface GameBoardDataViewController ()

@end

@implementation GameBoardDataViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    CGPoint p = [[touches anyObject] locationInView:[self view]];
    
    
    
    for (CAShapeLayer *l in self.view.layer.sublayers)
    {
         CGAffineTransform transf = CGAffineTransformMakeTranslation(-l.position.x, -l.position.y);
        
        if ([l isKindOfClass:[CAShapeLayer class]])
        {
            
            if (CGPathContainsPoint(l.path, &transf, p, YES))
            {
                NSLog(@"Layer Touched: %@", l.name);

            }
            
        }
    }
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    int x = 20;
    int y = 20;
    
    //Draw the cards without shapes
    
    int cardCounter = 0;
    
    for (int i =1; i <5; i++)
    {
        for (int i =1; i < 5; i++)
        {
            CAShapeLayer *cardBorder=[CAShapeLayer layer];
            UIBezierPath *path = [UIBezierPath bezierPathWithRect:CGRectMake(x, y, 40, 60)];
            [cardBorder setPath:[path CGPath]];
            [cardBorder setFillColor:[UIColor clearColor].CGColor];
            [cardBorder setBorderWidth:5];
            [cardBorder setStrokeColor:[UIColor blackColor].CGColor];
            [cardBorder setName:[[NSString alloc]initWithFormat:@"TouchPad%i",cardCounter]];
            //Add the layer
            [[[self view] layer]addSublayer:cardBorder];
            
            cardCounter = cardCounter+1;
            
            y=y+80;
            
        }
        
        x=x+60;
        y=20;
    }
    
    
    //Load Deck
    
    Card *Card0 = [[Card alloc]init];
    [Card0 set_cardID:@"TouchPad0"];
    [Card0 set_color:@"red"];
    [Card0 set_shape:@"square"];
    
    Card *Card1 = [[Card alloc]init];
    [Card1 set_cardID:@"TouchPad1"];
    
    Card *Card2 = [[Card alloc]init];
    [Card2 set_cardID:@"TouchPad2"];
    
    Card *Card3 = [[Card alloc]init];
    [Card3 set_cardID:@"TouchPad3"];
    
    Card *Card4 = [[Card alloc]init];
    [Card4 set_cardID:@"TouchPad4"];
    
    Card *Card5 = [[Card alloc]init];
    [Card5 set_cardID:@"TouchPad5"];
    
    Card *Card6 = [[Card alloc]init];
    [Card6 set_cardID:@"TouchPad6"];
    
    Card *Card7 = [[Card alloc]init];
    [Card7 set_cardID:@"TouchPad7"];
    
    Card *Card8 = [[Card alloc]init];
    [Card8 set_cardID:@"TouchPad8"];
    
    Card *Card9 = [[Card alloc]init];
    [Card9 set_cardID:@"TouchPad9"];
    
    Card *Card10 = [[Card alloc]init];
    [Card10 set_cardID:@"TouchPad10"];
    
    Card *Card11 = [[Card alloc]init];
    [Card11 set_cardID:@"TouchPad11"];
    
    Card *Card12 = [[Card alloc]init];
    [Card12 set_cardID:@"TouchPad12"];
    
    Card *Card13 = [[Card alloc]init];
    [Card13 set_cardID:@"TouchPad13"];
    
    Card *Card14 = [[Card alloc]init];
    [Card14 set_cardID:@"TouchPad14"];
    
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
