//
//  WGGame9ViewController.m
//  WordGame
//
//  Created by Kostya on 05.01.16.
//  Copyright © 2016 Stolyarenko K.S. All rights reserved.
//

#import "WGGame9ViewController.h"
#define strStr stringByAppendingString
@interface WGGame9ViewController ()

-(IBAction)letterB:(id)sender;
-(IBAction)okAction:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *next;
@property (strong, nonatomic) IBOutlet UILabel *answerLabel;
@property (strong, nonatomic) IBOutlet UILabel *chance;
@end

@implementation WGGame9ViewController

NSString *word9 = @"";
NSInteger chance9 = 3;

- (void)viewDidLoad {
    [super viewDidLoad];
   self.next.hidden = YES;
    word9 = @"";
    chance9 = 3;
    
}

-(IBAction)letterB:(id)sender
{
    word9 = [word9 strStr:@"B"];
}
-(IBAction)okAction:(id)sender {

        if (chance9 == 3 || chance9 == 2 || chance9 == 1){
            if ( [word9  isEqual: @"B" ] )
            {
                self.answerLabel.text = @"Отлично, ты отгадал!";
                word9 = @"";
                self.next.hidden = NO;
            }
            else
            {
                if (chance9 == 1)
                {
                    self.answerLabel.text = @"Ты проиграл!";
                    self.next.hidden = YES;
                    chance9 = 0;
                    self.chance.text = @"0";
                }
                else
                {
                    self.answerLabel.text = @"Неверно! Попробуй еще раз";
                    word9 = @"";
                    self.next.hidden = YES;
                    chance9--;
                    self.chance.text = [@(chance9) description];
                    
                }
            }
        }
}@end