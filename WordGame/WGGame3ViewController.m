//
//  WGGame3ViewController.m
//  WordGame
//
//  Created by Kostya on 05.01.16.
//  Copyright © 2016 Stolyarenko K.S. All rights reserved.
//

#import "WGGame3ViewController.h"

@interface WGGame3ViewController ()

-(IBAction)letterA:(id)sender;
-(IBAction)letterN:(id)sender;
-(IBAction)letterT:(id)sender;
-(IBAction)letterI:(id)sender;
-(IBAction)letterK:(id)sender;
-(IBAction)letterV:(id)sender;
-(IBAction)letterR:(id)sender;
-(IBAction)okAction:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *next;
@property (strong, nonatomic) IBOutlet UILabel *answerLabel;
@property (strong, nonatomic) IBOutlet UILabel *chance;
@end

@implementation WGGame3ViewController

#define word userWord3
#define chance chance3
#define strStr stringByAppendingString

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


NSString *word = @"";
NSInteger chance = 3;

-(IBAction)letterA:(id)sender
{
    word = [word strStr:@"A"];
}

-(IBAction)letterN:(id)sender
{
    word = [word strStr:@"N"];
}

-(IBAction)letterT:(id)sender
{
    word = [word strStr:@"T"];
}

-(IBAction)letterI:(id)sender
{
    word = [word strStr:@"I"];
}

-(IBAction)letterK:(id)sender
{
    word = [word strStr:@"K"];
}

-(IBAction)letterV:(id)sender
{
    word = [word strStr:@"V"];
}

-(IBAction)letterR:(id)sender
{
    word = [word strStr:@"R"];
}

-(IBAction)okAction:(id)sender {
    if ( [word  isEqual: @"ANTIKVAR" ]|| [word  isEqual: @"nos"] )
    {
        self.answerLabel.text = @"Не так уж и сложно - Ты отгадал:)";
        word = @"";
        self.next.hidden = NO;
    }
    else
    {
        if (chance == 0) {
            self.answerLabel.text = @"Ты проиграл!";
            self.next.hidden = YES;
        }
        else
        {
            self.answerLabel.text = @"Неверно! Попробуй еще раз";
            word = @"";
            self.next.hidden = YES;
            chance--;
            // NSString *str = @(chance);
            //self.chance.text = str;
        }
    }
    
    
    
    
}@end