//
//  assignViewController.m
//  Assignment7
//
//  Created by student on 4/8/13.
//  Copyright (c) 2013 Cody Berndt. All rights reserved.
//

#import "gamesViewController.h"
#import <QuartzCore/QuartzCore.h>


@interface gamesViewController ()

@end

@implementation gamesViewController




-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    int touchX;
    int touchY;
  
    
    
    CGPoint p = [[touches anyObject] locationInView:[self view]];
    CAShapeLayer *circleLayer;

    
    for (CAShapeLayer *l in self.view.layer.sublayers)
    {
        
        CGAffineTransform transf = CGAffineTransformMakeTranslation(-l.position.x, -l.position.y);
        
        if ([l isKindOfClass:[CAShapeLayer class]])
        {
        
            if (CGPathContainsPoint(l.path, &transf, p, YES))
            {
                
                NSLog(@"Layer Touched:%@", l.name);
                NSLog(@"X location:%f", l.position.x);
                NSLog(@"X location:%f", l.position.y);
                
                touchX = l.position.x;
                touchY = l.position.y;
               
                
                circleLayer = [CAShapeLayer layer];
               
                UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(touchX, touchY, 25, 25) cornerRadius:25];
                
                [circleLayer setLineWidth:2];
                [circleLayer setStrokeColor:[UIColor yellowColor].CGColor];
                [circleLayer setFillColor:[UIColor clearColor].CGColor];
                [circleLayer setPath:[path CGPath]];
                
                [l addSublayer:circleLayer];
                
                
            
                
            }
            
            
        }
        
 
    }
    
   // if (circleLayer)
   // {
   //     [[[self view] layer] addSublayer:circleLayer];
   // }
    

    
    
  
    
    
}

-(void) BuildGameData:(NSString *)ArrayString
{
    _gameArray = [ArrayString componentsSeparatedByString:@","];
}



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString *board = @"12,1,15,2,9,24,30,22,18,21,34,43,45,31,42,54,30,58,56,55,68,63,70,72,62";
    //split the contents of the string into an array (separated by a ',')
    NSArray* boardNumbers = [board componentsSeparatedByString:@","];
    //loop through array to display, see if it worked
    for (NSString *n in boardNumbers)
    {
        NSLog(@"%@", n);
    }
    
    
    //display numbers into the grid.
    int counter = 0;
    for (int i = 0; i < 5; i++)
    {
        for (int j = 0; j < 5; j++)
        {
        CATextLayer *labelLayer = [[CATextLayer alloc] init];
        [labelLayer setFont:@"Helvetica-Bold"];
        [labelLayer setFontSize:20];
        [labelLayer setString:[NSString stringWithFormat:@"%@", boardNumbers[counter]]];
        [labelLayer setForegroundColor:[UIColor blackColor].CGColor];
        [labelLayer setBorderColor:[UIColor redColor].CGColor];
        [labelLayer setBorderWidth:1];
        
        
        [labelLayer setFrame:CGRectMake(0, 0, 54, 60)];
        labelLayer.position = CGPointMake(55 + (55 * i), 130 + (j * 60));
            
            [[[self view] layer] addSublayer:labelLayer];
            counter = counter +1;

        }
    }
            
    
    /*
    //***********Number Label1 ***************
    for (int i = 0; i < 3; i++)
    {
    CATextLayer *labelLayer = [[CATextLayer alloc] init];
    [labelLayer setFont:@"Helvetica-Bold"];
    [labelLayer setFontSize:20];
    [labelLayer setString:[NSString stringWithFormat:@"%i", i]];
    [labelLayer setForegroundColor:[UIColor blackColor].CGColor];
    [labelLayer setBorderColor:[UIColor redColor].CGColor];
    [labelLayer setBorderWidth:3];
    
    [labelLayer setFrame:CGRectMake(0,0,120, 30)];
    labelLayer.position = CGPointMake(80, 50 + (i * 100));
    
    [[[self view] layer] addSublayer:labelLayer];
    }*/
    
    
    int x = 25;
    int y = 100;
    
    //vertical lines
    for (int i = 0; i < 300; i = i + 50)
    {
    int xPosition = 25;
    CAShapeLayer *lineLayer = [CAShapeLayer layer];
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(xPosition + i, 100)];
    [path addLineToPoint:CGPointMake(xPosition + i, 375)];
    [path closePath];
    [lineLayer setPath:[path CGPath]];
    [lineLayer setLineWidth:5];
    [lineLayer setStrokeColor:[UIColor blueColor].CGColor];
    [[[self view] layer] addSublayer:lineLayer];
    [lineLayer setName:@"LineLayer"];
    }
    
    //horizontal lines
    
    for (int i = 0; i < 325; i = i + 55)
    {
        int yPosition = 100;
        
        CAShapeLayer *lineLayer = [CAShapeLayer layer];
        UIBezierPath *path = [UIBezierPath bezierPath];
        [path moveToPoint:CGPointMake(25, yPosition + i)];
        [path addLineToPoint:CGPointMake(275,yPosition +i)];
        [path closePath];
        [lineLayer setPath:[path CGPath]];
        [lineLayer setLineWidth:5];
        [lineLayer setStrokeColor:[UIColor blueColor].CGColor];
        [[[self view] layer] addSublayer:lineLayer];
        [lineLayer setName:@"LineLayer"];
    }
    

    
    for (int i =1; i <6; i++)
    {
        
        
        for (int i =1; i < 6; i++)
        {
         CAShapeLayer *squareLayer=[CAShapeLayer layer];
            UIBezierPath *path = [UIBezierPath bezierPathWithRect:CGRectMake(x, y, 49, 50)];
            [squareLayer setPath:[path CGPath]];
            [squareLayer setFillColor:[UIColor clearColor].CGColor];
            [squareLayer setLineWidth:5];
            [squareLayer setName:[[NSString alloc]initWithFormat:@"TouchPad%i", counter]];
            [[[self view] layer]addSublayer:squareLayer];
        
            y=y+54;
            counter ++;
        }
        
        x=x+51;
        y=100;
        
    }
    
    


}


//web server boiler plate
-(void) postDataWithUrl:(NSString *) urlString
{
    _httpdata = [[NSMutableData alloc]init];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    [request setHTTPMethod:@"POST"];
    NSString *postBody =@"";
    NSData *postData = [postBody dataUsingEncoding:NSUTF8StringEncoding];
    [request setHTTPBody:postData];
    _connection =[[NSURLConnection alloc] initWithRequest:request delegate:self startImmediately:YES];
}

-(void) connection:(NSURLConnection *) conn didReceiveData:(NSData *)data
{
    [_httpdata appendData:data];
}

//takes json array.  builds into _gamecount full of bingogame Class
-(void) connectionDidFinishLoading:(NSURLConnection *) connection
{
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:_httpdata options:kNilOptions error:Nil];
    if ([[json objectForKey:@"status"] isEqualToString:@"ok"])
    {
        if ([[json objectForKey:@"message"] isEqualToString:@"number requested"])
        {
            NSLog(@"GetNumber - OK");
        }
        NSString *newNumber = [json objectForKey:@"number"];
        
    }
    else
    {
        NSLog(@"Server Error - GetNumber");
    }
}

//- (void) getScreenDimensions
//{
    //int width = self.view.frame.size.width;
    //int height = self.view.frame.size.height;
//}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//gets timestamp string. decimal dropped-nothing more.
-(NSString *)getCurrentDateUTC
{
    float fseconds = [[NSDate date] timeIntervalSince1970];
    int iseconds = (int) floor(fseconds);
    NSString *t =  [NSString stringWithFormat:@"%i", iseconds];
    return t;
}

@end
