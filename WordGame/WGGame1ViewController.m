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

@implementation WGGame1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.next.hidden = YES;
    // Do any additional setup after loading the view.
}


NSString *userWord1 = @"";
NSInteger chance1 = 3;

-(IBAction)letterA:(id)sender
{
    userWord1 = [userWord1 stringByAppendingString:@"A"];
}

-(IBAction)letterN:(id)sender
{
    userWord1 = [userWord1 stringByAppendingString:@"N"];
}

-(IBAction)letterT:(id)sender
{
    userWord1 = [userWord1 stringByAppendingString:@"T"];
}

-(IBAction)letterI:(id)sender
{
    userWord1 = [userWord1 stringByAppendingString:@"I"];
}

-(IBAction)letterK:(id)sender
{
    userWord1 = [userWord1 stringByAppendingString:@"K"];
}

-(IBAction)letterV:(id)sender
{
    userWord1 = [userWord1 stringByAppendingString:@"V"];
}

-(IBAction)letterR:(id)sender
{
    userWord1 = [userWord1 stringByAppendingString:@"R"];
}

-(IBAction)okAction:(id)sender {
    if ( [userWord1  isEqual: @"ANTIKVAR" ]|| [userWord1  isEqual: @"nos"] )
    {
        self.answerLabel.text = @"Не так уж и сложно - Ты отгадал:)";
        userWord1 = @"";
        self.next.hidden = NO;
    }
    else
    {
        if (chance1 == 0) {
            self.answerLabel.text = @"Ты проиграл!";
            self.next.hidden = YES;
        }
        else
        {
            self.answerLabel.text = @"Неверно! Попробуй еще раз";
            userWord1 = @"";
            self.next.hidden = YES;
            chance1--;
            // NSString *str = @(chance);
            //self.chance.text = str;
        }
    }
    
    
    
    
}@end
