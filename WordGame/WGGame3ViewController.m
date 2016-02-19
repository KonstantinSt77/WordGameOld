//
//  WGGame3ViewController.m
//  WordGame
//
//  Created by Kostya on 05.01.16.
//  Copyright © 2016 Stolyarenko K.S. All rights reserved.
//

#import "WGGame3ViewController.h"
#define strStr stringByAppendingString
@interface WGGame3ViewController ()

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

@implementation WGGame3ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //self.next.hidden = YES;
}

NSString *word1 = @"";
NSInteger chance1 = 3;


-(IBAction)letterA:(id)sender
{
    word1 = [word1 strStr:@"A"];
}

-(IBAction)letterT:(id)sender
{
    word1 = [word1 strStr:@"T"];
}

-(IBAction)letterI:(id)sender
{
    word1 = [word1 strStr:@","];
}

-(IBAction)letterL:(id)sender
{
    word1 = [word1 strStr:@"L"];
}

-(IBAction)letterR:(id)sender
{
    word1 = [word1 strStr:@"R"];
}

-(IBAction)okAction:(id)sender {
    if ( [word1  isEqual: @"ALTAR," ])
    {
        self.answerLabel.text = @"Ты отгадал, это - Алтарь!:)";
        word1 = @"";
        self.next.hidden = NO;
    }
    else
    {
        if (chance1 == 1) {
            self.answerLabel.text = @"Ты проиграл!";
            self.next.hidden = YES;
            self.chance.text = @"0";
        }
        else
        {
            self.answerLabel.text = @"Неверно! Попробуй еще раз";
            word1 = @"";
            self.next.hidden = YES;
            chance1--;
            self.chance.text = [@(chance1) description];
        }
    }
    
}
@end
