//
//  WGAlphbViewController.h
//  Word Game
//
//  Created by Kostya on 08.02.16.
//  Copyright © 2016 Stolyarenko K.S. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WGAlphbViewController : UIViewController
-(IBAction)letterC:(id)sender;
-(IBAction)letterL:(id)sender;
-(IBAction)letterO:(id)sender;
-(IBAction)letterN:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *next;
@property (strong, nonatomic) IBOutlet UILabel *answerLabel;
@property (strong, nonatomic) IBOutlet UILabel *chance;
@property NSString *word;
@end

