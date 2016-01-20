//
//  WGGame1ViewController.m
//  WordGame
//
//  Created by Kostya on 05.01.16.
//  Copyright © 2016 Stolyarenko K.S. All rights reserved.
//

#import "WGGame1ViewController.h"

@interface WGGame1ViewController ()
-(IBAction)letterA:(id)sender;
-(IBAction)letterL:(id)sender;
-(IBAction)letterT:(id)sender;
-(IBAction)letterR:(id)sender;
-(IBAction)letterI:(id)sender;
-(IBAction)okAction:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *next;
@property (strong, nonatomic) IBOutlet UILabel *answerLabel;
@property (strong, nonatomic) IBOutlet UILabel *chance;
@end

@implementation WGGame1ViewController

#define word userWord1
#define chancee chance1
#define strStr stringByAppendingString

- (void)viewDidLoad {
    [super viewDidLoad];
    self.next.hidden = YES;
    // Do any additional setup after loading the view.
}


NSString *word = @"";
NSInteger chancee = 3;

-(IBAction)letterA:(id)sender
{
    word = [word strStr:@"A"];
}


-(IBAction)letterT:(id)sender
{
    word = [word strStr:@"T"];
}

-(IBAction)letterI:(id)sender
{
    word = [word strStr:@"I"];
}

-(IBAction)letterL:(id)sender
{
    word = [word strStr:@"L"];
}


-(IBAction)letterR:(id)sender
{
    word = [word strStr:@"R"];
}

-(IBAction)okAction:(id)sender {
    if ( [word  isEqual: @"ALTARI" ])
    {
        self.answerLabel.text = @"Ты отгадал, это - Алтарь!:)";
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
