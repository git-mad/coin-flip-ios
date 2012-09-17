//
//  GMFlipViewController.m
//  coin-flip-ios
//
//  Created by Jesse Rosalia on 9/17/12.
//  Copyright (c) 2012 GIT MAD. All rights reserved.
//

#import "GMFlipViewController.h"

@implementation GMFlipViewController
@synthesize flipResultsField;

@synthesize isHeads;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

//******
// This is called right before the view is displayed, and a good place to prepare any additional data for viewing.
//******
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //set the flip results text field based on the isHeads property
    if (self.isHeads) {
        [self.flipResultsField setText:@"Heads"];
    } else {
        [self.flipResultsField setText:@"Tails"];        
    }
}

- (void)viewDidUnload
{
    [self setFlipResultsField:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
