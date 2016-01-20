//
//  WGGame3ViewController.m
//  WordGame
//
//  Created by Kostya on 05.01.16.
//  Copyright © 2016 Stolyarenko K.S. All rights reserved.
//

#import "WGGame3ViewController.h"

@interface WGGame3ViewController ()

-(IBAction)letterI:(id)sender;
-(IBAction)letterS:(id)sender;
-(IBAction)letterT:(id)sender;
-(IBAction)letterO:(id)sender;
-(IBAction)letterR:(id)sender;
-(IBAction)letterK:(id)sender;
-(IBAction)okAction:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *next;
@property (strong, nonatomic) IBOutlet UILabel *answerLabel;
@property (strong, nonatomic) IBOutlet UILabel *chance;
@end

@implementation WGGame3ViewController

#define word userWord3
#define chancee chance3
#define strStr stringByAppendingString

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


NSString *word = @"";
NSInteger chancee = 3;

-(IBAction)letterI:(id)sender
{
    word = [word strStr:@"I"];
}

-(IBAction)letterS:(id)sender
{
    word = [word strStr:@"S"];
}

-(IBAction)letterT:(id)sender
{
    word = [word strStr:@"T"];
}

-(IBAction)letterO:(id)sender
{
    word = [word strStr:@"O"];
}

-(IBAction)letterR:(id)sender
{
    word = [word strStr:@"R"];
}

-(IBAction)letterK:(id)sender
{
    word = [word strStr:@"K"];
}


-(IBAction)okAction:(id)sender {
    if ( [word  isEqual: @"ISTORIK" ])
    {
        self.answerLabel.text = @"Не так уж и сложно, это Историк";
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