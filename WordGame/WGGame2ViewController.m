//
//  WGGame2ViewController.m
//  WordGame
//
//  Created by Kostya on 05.01.16.
//  Copyright © 2016 Stolyarenko K.S. All rights reserved.
//

#import "WGGame2ViewController.h"

@interface WGGame2ViewController ()

-(IBAction)letterR:(id)sender;
-(IBAction)letterE:(id)sender;
-(IBAction)letterK:(id)sender;
-(IBAction)letterL:(id)sender;
-(IBAction)letterA:(id)sender;
-(IBAction)letterM:(id)sender;
-(IBAction)okAction:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *next;
@property (strong, nonatomic) IBOutlet UILabel *answerLabel;
@property (strong, nonatomic) IBOutlet UILabel *chance;
@end

@implementation WGGame2ViewController

#define word userWord2
#define chancee chance2
#define strStr stringByAppendingString

- (void)viewDidLoad {
    [super viewDidLoad];
    self.next.hidden = YES;
    // Do any additional setup after loading the view.
}


NSString *word = @"";
NSInteger chancee = 3;

-(IBAction)letterR:(id)sender
{
    word = [word strStr:@"R"];
}
-(IBAction)letterE:(id)sender
{
    word = [word strStr:@"E"];
}
-(IBAction)letterK:(id)sender
{
    word = [word strStr:@"K"];
}

-(IBAction)letterL:(id)sender
{
    word = [word strStr:@"L"];
}

-(IBAction)letterA:(id)sender
{
    word = [word strStr:@"A"];
}

-(IBAction)letterM:(id)sender
{
    word = [word strStr:@"M"];
}


-(IBAction)okAction:(id)sender {
    if ( [word  isEqual: @"REKLAMA" ])
    {
        self.answerLabel.text = @"Ты отгадал, это Реклама!:)";
        word = @"";
        self.next.hidden = NO;
    }
    else
    {
        if (chancee == 1) {
            self.answerLabel.text = @"Ты проиграл!";
            self.next.hidden = YES;
            self.chance.text = @"0";
        }
        else
        {
            self.answerLabel.text = @"Неверно! Попробуй еще раз";
            word = @"";
            self.next.hidden = YES;
            chancee--;
            // NSString *str = @(chance);
            //self.chance.text = str;
        }
    }
    
    
    
    
}@end 