//
//  WGGame7ViewController.m
//  WordGame
//
//  Created by Kostya on 05.01.16.
//  Copyright © 2016 Stolyarenko K.S. All rights reserved.
//

#import "WGGame7ViewController.h"
#define strStr stringByAppendingString
@interface WGGame7ViewController ()

-(IBAction)letterN:(id)sender;

@property (strong, nonatomic) IBOutlet UIButton *next;
@property (strong, nonatomic) IBOutlet UILabel *answerLabel;
@property (strong, nonatomic) IBOutlet UILabel *chance;
@end

@implementation WGGame7ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //self.next.hidden = YES;
}

NSString *word7 = @"";
NSInteger chance7 = 3;



-(IBAction)letterN:(id)sender
{
    word7 = [word7 strStr:@"N"];
}


-(IBAction)okAction:(id)sender {
    if ( [word7  isEqual: @"N" ])
    {
        self.answerLabel.text = @"Не так уж и сложно - Ты отгадал:)";
        word7 = @"";
        self.next.hidden = NO;
    }
    else
    {
        if (chance7 == 0) {
            self.answerLabel.text = @"Ты проиграл!";
            self.next.hidden = YES;
        }
        else
        {
            self.answerLabel.text = @"Неверно! Попробуй еще раз";
            word7 = @"";
            self.next.hidden = YES;
            chance7--;
            self.chance.text = [@(chance7) description];
        }
    }
    
    
    
    
}@end 