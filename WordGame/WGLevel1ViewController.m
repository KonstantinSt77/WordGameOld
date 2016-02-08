//
//  WGLevel1ViewController.m
//  Word Game
//
//  Created by Kostya on 08.02.16.
//  Copyright © 2016 Stolyarenko K.S. All rights reserved.
//

#import "WGLevel1ViewController.h"

@interface WGLevel1ViewController ()
-(IBAction)okAction:(id)sender;
@end

@implementation WGLevel1ViewController

NSInteger chance = 3;
-(IBAction)okAction:(id)sender {

    if ( [self.word  isEqual: @"slon" ] )
    {
        self.answerLabel.text = @"Отлично, ты отгадал, это - Слон!:)";
        self.word = @"";
        self.next.hidden = NO;
    }
    else
    {
        if (chance == 1) {
            self.answerLabel.text = @"Ты проиграл!";
            self.next.hidden = YES;
            self.chance.text = @"0";
        }
        else
        {
            self.answerLabel.text = @"Неверно! Попробуй еще раз";
            self.word = @"";
            self.next.hidden = YES;
            chance--;
            self.chance.text = [@(chance) description];
        }
    }
}

@end
