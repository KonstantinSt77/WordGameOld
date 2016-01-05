//
//  WGGameViewController.m
//  WordGame
//
//  Created by Kostya on 05.01.16.
//  Copyright © 2016 Stolyarenko K.S. All rights reserved.
//

#import "WGGameViewController.h"

@interface WGGameViewController ()
-(IBAction)letterC:(id)sender;
-(IBAction)letterL:(id)sender;
-(IBAction)letterO:(id)sender;
-(IBAction)letterN:(id)sender;
-(IBAction)okAction:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *next;
@property (strong, nonatomic) IBOutlet UILabel *answerLabel;
@property (strong, nonatomic) IBOutlet UILabel *chance;
@end

@implementation WGGameViewController

#define word userWord
#define chance chance
#define strStr stringByAppendingString

- (void)viewDidLoad {
    [super viewDidLoad];
    self.next.hidden = YES;
    // Do any additional setup after loading the view.
}


NSString *word = @"";
NSInteger chance = 3;

-(IBAction)letterC:(id)sender
{
    word = [word strStr:@"s"];
}

-(IBAction)letterL:(id)sender
{
  word = [word strStr:@"l"];
}

-(IBAction)letterO:(id)sender
{
    word = [word strStr:@"o"];
}

-(IBAction)letterN:(id)sender
{
  word = [word strStr:@"n"];
}

-(IBAction)okAction:(id)sender {
if ( [word  isEqual: @"slon" ]|| [word  isEqual: @"nos"] )
{
self.answerLabel.text = @"Отлично - Ты отгадал:)";
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