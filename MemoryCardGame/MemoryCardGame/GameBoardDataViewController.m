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
    CAShapeLayer *circleLayer;
    
    int iTeam=1;
    int iTry=0;
    NSString *shapeTry1;
    NSString *shapeTry2;
    NSString *colorTry1;
    NSString *colorTry2;
    
    
    
    
    
    for (CAShapeLayer *l in self.view.layer.sublayers)
    {
         CGAffineTransform transf = CGAffineTransformMakeTranslation(-l.position.x, -l.position.y);
        
        if ([l isKindOfClass:[CAShapeLayer class]])
        {
            
            if (CGPathContainsPoint(l.path, &transf, p, YES))
            {
                NSLog(@"Layer Touched: %@", l.name);
              //  NSLog(@"The X is : %f", l.position.x);
                
                
                
                NSString *Touched = [[NSString alloc]initWithFormat:@"%@", l.name];
                NSString *match=@"Pad";
                NSString *pre;
                NSString *post;
                
                NSString *preC;
                
                //Like Con peak (looking through string
                NSScanner *scanner = [NSScanner scannerWithString:Touched];
                
                [scanner scanUpToString:match intoString:&pre];
                [scanner scanString:match intoString:nil];
                post=[Touched substringFromIndex:scanner.scanLocation];
                
                if ([pre isEqualToString:@"Touch"])
                {
                    NSLog(@"The post value is %@", post);
                    
                    //convert post to int for latter use
                    int iCard = [post intValue];
                   
                    
                    //Containers for card attributes and location
                    NSString *shape;
                    NSString *color;
                
                    int TouchY;
                    int TouchX;

                    
                    
                 
                    //Get Card
                    preC = [[NSString alloc] initWithFormat:@"Card%i", iCard ];
                    
                    
            //Check if card is selected
                    NSString *revealed = [_CardsArray[iCard]_revealed];
                    
                    
                    if ([revealed isEqualToString:@"No"])
                    {
                        
                        // value = [Card0 _shape];
                        shape = [_CardsArray[iCard] _shape];
                        color = [_CardsArray[iCard] _color];
                        
                        
                        NSLog(@"The shape is %@", shape);
                        NSLog(@"The color is %@",color);
                        
                        
                        //Determin the column of shape
                        int tempY = (iCard/4);
                        NSLog(@"TempY = %d", tempY);
                        
                        
                        //Determine Row of shape
                        int tempX;
                        
                        if ((iCard+1) <5)
                        {
                            tempX = (iCard+1);
                        }
                        else
                        {
                            tempX =(fdim((iCard+1),4));
                        }
                        
                        while (tempX>4)
                        {
                            tempX=tempX-4;
                        }
                        
                        NSLog(@"TempX = %d", tempX);
                        
                        
                        
                        
                        //Draw square
                        if ([shape isEqualToString:@"square"])
                        {
                            //Determin Shape location and draw it.
                            TouchY=(28+(60*tempY));
                            TouchX=(35+((tempX-1)*80));
                            
                            
                            circleLayer = [CAShapeLayer layer];
                            
                            UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(TouchY, TouchX, 25, 25) cornerRadius:0];
                            
                            [circleLayer setLineWidth:2];
                            
                            //Set Color
                            if ([color isEqualToString:@"redColor"])
                            {
                                [circleLayer setStrokeColor:[UIColor redColor].CGColor];
                            }
                            
                            if ([color isEqualToString:@"blueColor"])
                            {
                                [circleLayer setStrokeColor:[UIColor blueColor].CGColor];
                            }
                            if ([color isEqualToString:@"yellowColor"])
                            {
                                [circleLayer setStrokeColor:[UIColor yellowColor].CGColor];
                            }
                            
                            if ([color isEqualToString:@"greenColor"])
                            {
                                [circleLayer setStrokeColor:[UIColor greenColor].CGColor];
                            }
                            
                            
                            [circleLayer setFillColor:[UIColor clearColor].CGColor];
                            [circleLayer setPath:[path CGPath]];
                            
                            [l addSublayer:circleLayer];
                            
                        }
                        
                        
                        //Draw circle
                        if ([shape isEqualToString:@"circle"])
                        {
                            //Determin Shape location and draw it.
                            TouchY=(28+(60*tempY));
                            TouchX=(35+((tempX-1)*80));
                            
                            
                            circleLayer = [CAShapeLayer layer];
                            
                            UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(TouchY, TouchX, 25, 25) cornerRadius:25];
                            
                            [circleLayer setLineWidth:2];
                            
                            //Set Color
                            if ([color isEqualToString:@"redColor"])
                            {
                                [circleLayer setStrokeColor:[UIColor redColor].CGColor];
                            }
                            
                            if ([color isEqualToString:@"blueColor"])
                            {
                                [circleLayer setStrokeColor:[UIColor blueColor].CGColor];
                            }
                            if ([color isEqualToString:@"yellowColor"])
                            {
                                [circleLayer setStrokeColor:[UIColor yellowColor].CGColor];
                            }
                            
                            if ([color isEqualToString:@"greenColor"])
                            {
                                [circleLayer setStrokeColor:[UIColor greenColor].CGColor];
                            }
                            
                            
                            
                            [circleLayer setFillColor:[UIColor clearColor].CGColor];
                            [circleLayer setPath:[path CGPath]];
                            
                            [l addSublayer:circleLayer];
                        }
                        
                        [[_CardsArray objectAtIndex:iCard] set_revealed:@""];
                        


                        
                    }
                 
 
                    
                    if ([revealed isEqualToString:@""])
                    {
                        
                        // value = [Card0 _shape];
                        shape = [_CardsArray[iCard] _shape];
                        color = [_CardsArray[iCard] _color];
                        
                        
                        NSLog(@"The shape is %@", shape);
                        NSLog(@"The color is %@",color);
                        
                        
                        //Determin the column of shape
                        int tempY = (iCard/4);
                        NSLog(@"TempY = %d", tempY);
                        
                        
                        //Determine Row of shape
                        int tempX;
                        
                        if ((iCard+1) <5)
                        {
                            tempX = (iCard+1);
                        }
                        else
                        {
                            tempX =(fdim((iCard+1),4));
                        }
                        
                        while (tempX>4)
                        {
                            tempX=tempX-4;
                        }
                        
                        NSLog(@"TempX = %d", tempX);
                        
                        
                        
                        
                        //Draw square
                        if ([shape isEqualToString:@"square"])
                        {
                            //Determin Shape location and draw it.
                            TouchY=(28+(60*tempY));
                            TouchX=(35+((tempX-1)*80));
                            
                            
                            circleLayer = [CAShapeLayer layer];
                            
                            UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(TouchY, TouchX, 25, 25) cornerRadius:0];
                            
                            [circleLayer setLineWidth:2];
                            
                            //Set Color
                           [circleLayer setStrokeColor:[UIColor clearColor].CGColor];
                            
                            
                            [circleLayer setFillColor:[UIColor clearColor].CGColor];
                            [circleLayer setPath:[path CGPath]];
                            
                            [l addSublayer:circleLayer];
                            
                        }
                        
                        
                        //Draw circle
                        if ([shape isEqualToString:@"circle"])
                        {
                            //Determin Shape location and draw it.
                            TouchY=(28+(60*tempY));
                            TouchX=(35+((tempX-1)*80));
                            
                            
                            circleLayer = [CAShapeLayer layer];
                            
                            UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(TouchY, TouchX, 25, 25) cornerRadius:25];
                            
                            [circleLayer setLineWidth:2];
                            
                            //Set Color
                            [circleLayer setStrokeColor:[UIColor clearColor].CGColor];
                            
                            
                            
                            [circleLayer setFillColor:[UIColor clearColor].CGColor];
                            [circleLayer setPath:[path CGPath]];
                            
                            [l addSublayer:circleLayer];
                        }
                        
                        [[_CardsArray objectAtIndex:iCard] set_revealed:@""];
                        
                        
                        
                        
                    }

                        
                    
                    
                }

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
    
    

    [self loadCards];
    
    [self loadFlip];
    
    
}

-(void) loadFlip
{
 
    NSInteger iFlip[16];
    
    for (NSInteger i=0; i<16; i ++)
        iFlip[i] = 0;
    
}




-(void) loadCards
{
    //Load Deck
    _CardsArray = [[NSMutableArray alloc]init];
    
    
    
        
    Card *Card0 = [[Card alloc]init];
    [Card0 set_cardID:@"TouchPad0"];
    [Card0 set_color:@"redColor"];
    [Card0 set_shape:@"square"];
    [Card0 set_revealed:@"No"];

    
    [_CardsArray addObject:Card0];
    
    Card *Card1 = [[Card alloc]init];
    [Card1 set_cardID:@"TouchPad1"];
    [Card1 set_color:@"blueColor"];
    [Card1 set_shape:@"square"];
    [Card1 set_revealed:@"No"];

    
    [_CardsArray addObject:Card1];
    
    Card *Card2 = [[Card alloc]init];
    [Card2 set_cardID:@"TouchPad2"];
    [Card2 set_color:@"redColor"];
    [Card2 set_shape:@"circle"];
    [Card2 set_revealed:@"No"];

    
    [_CardsArray addObject:Card2];
    
    Card *Card3 = [[Card alloc]init];
    [Card3 set_cardID:@"TouchPad3"];
    [Card3 set_color:@"blueColor"];
    [Card3 set_shape:@"circle"];
    [Card3 set_revealed:@"No"];

    
    [_CardsArray addObject:Card3];
    
    Card *Card4 = [[Card alloc]init];
    [Card4 set_cardID:@"TouchPad4"];
    [Card4 set_color:@"yellowColor"];
    [Card4 set_shape:@"square"];
    [Card4 set_revealed:@"No"];

    
    [_CardsArray addObject:Card4];
    
    Card *Card5 = [[Card alloc]init];
    [Card5 set_cardID:@"TouchPad5"];
    [Card5 set_color:@"greenColor"];
    [Card5 set_shape:@"square"];
    [Card5 set_revealed:@"No"];

    
    [_CardsArray addObject:Card5];
    
    Card *Card6 = [[Card alloc]init];
    [Card6 set_cardID:@"TouchPad6"];
    [Card6 set_color:@"yellowColor"];
    [Card6 set_shape:@"circle"];
    [Card6 set_revealed:@"No"];

    
    [_CardsArray addObject:Card6];
    
    Card *Card7 = [[Card alloc]init];
    [Card7 set_cardID:@"TouchPad7"];
    [Card7 set_color:@"greenColor"];
    [Card7 set_shape:@"circle"];
    [Card7 set_revealed:@"No"];

    
    [_CardsArray addObject:Card7];
    
    Card *Card8 = [[Card alloc]init];
    [Card8 set_cardID:@"TouchPad8"];
    [Card8 set_color:@"redColor"];
    [Card8 set_shape:@"square"];
    [Card8 set_revealed:@"No"];

    
    [_CardsArray addObject:Card8];
    
    Card *Card9 = [[Card alloc]init];
    [Card9 set_cardID:@"TouchPad9"];
    [Card9 set_color:@"blueColor"];
    [Card9 set_shape:@"square"];
    [Card9 set_revealed:@"No"];

    
    [_CardsArray addObject:Card9];
    
    Card *Card10 = [[Card alloc]init];
    [Card10 set_cardID:@"TouchPad10"];
    [Card10 set_color:@"redColor"];
    [Card10 set_shape:@"circle"];
    [Card10 set_revealed:@"No"];

    
    [_CardsArray addObject:Card10];
    
    Card *Card11 = [[Card alloc]init];
    [Card11 set_cardID:@"TouchPad11"];
    [Card11 set_color:@"blueColor"];
    [Card11 set_shape:@"circle"];
    [Card11 set_revealed:@"No"];

    
    [_CardsArray addObject:Card11];
    
    Card *Card12 = [[Card alloc]init];
    [Card12 set_cardID:@"TouchPad12"];
    [Card12 set_color:@"yellowColor"];
    [Card12 set_shape:@"square"];
    [Card12 set_revealed:@"No"];

    
    [_CardsArray addObject:Card12];
    
    Card *Card13 = [[Card alloc]init];
    [Card13 set_cardID:@"TouchPad13"];
    [Card13 set_color:@"greenColor"];
    [Card13 set_shape:@"square"];
    [Card13 set_revealed:@"No"];

    
    [_CardsArray addObject:Card13];
    
    Card *Card14 = [[Card alloc]init];
    [Card14 set_cardID:@"TouchPad14"];
    [Card14 set_color:@"yellowColor"];
    [Card14 set_shape:@"circle"];
    [Card14 set_revealed:@"No"];

    
    [_CardsArray addObject:Card14];
    
    Card *Card15 = [[Card alloc]init];
    [Card15 set_cardID:@"TouchPad15"];
    [Card15 set_color:@"greenColor"];
    [Card15 set_shape:@"circle"];
    [Card15 set_revealed:@"No"];

    
    [_CardsArray addObject:Card15];
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
