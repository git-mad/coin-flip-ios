//
//  GMFlipViewController.h
//  coin-flip-ios
//
//  Created by Jesse Rosalia on 9/17/12.
//  Copyright (c) 2012 GIT MAD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GMFlipViewController : UIViewController

@property BOOL isHeads;

- (void) setIsHeads:(BOOL)isHeads;

@property (weak, nonatomic) IBOutlet UITextField *flipResultsField;
@end
