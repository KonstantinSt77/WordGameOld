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

- (void)viewDidLoad {
    [super viewDidLoad];
    self.next.hidden = YES;
    // Do any additional setup after loading the view.
}


NSString *userWord = @"";
NSInteger chance = 3;

-(IBAction)letterC:(id)sender
{
    userWord = [userWord stringByAppendingString:@"s"];
}

-(IBAction)letterL:(id)sender
{
  userWord = [userWord stringByAppendingString:@"l"];
}

-(IBAction)letterO:(id)sender
{
    userWord = [userWord stringByAppendingString:@"o"];
}

-(IBAction)letterN:(id)sender
{
  userWord = [userWord stringByAppendingString:@"n"];
}

-(IBAction)okAction:(id)sender {
if ( [userWord  isEqual: @"slon" ]|| [userWord  isEqual: @"nos"] )
{
self.answerLabel.text = @"Отлично - Ты отгадал:)";
    userWord = @"";
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
    userWord = @"";
        self.next.hidden = YES;
    chance--;
   // NSString *str = @(chance);
    //self.chance.text = str;
    }
}

    
    

}@end
