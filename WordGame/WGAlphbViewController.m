//
//  WGAlphbViewController.m
//  Word Game
//
//  Created by Kostya on 08.02.16.
//  Copyright © 2016 Stolyarenko K.S. All rights reserved.
//

#define strStr stringByAppendingString
#import "WGAlphbViewController.h"

@interface WGAlphbViewController ()

@end

@implementation WGAlphbViewController

-(IBAction)letterC:(id)sender
{
    self.word = [self.word strStr:@"s"];
    
}

-(IBAction)letterL:(id)sender
{
    self.word = [self.word strStr:@"l"];
}

-(IBAction)letterO:(id)sender
{
    self.word = [self.word strStr:@"o"];
}

-(IBAction)letterN:(id)sender
{
    self.word = [self.word strStr:@"n"];
}

@end
