//
//  GMViewController.m
//  coin-flip-ios
//
//  Created by Jesse Rosalia on 9/17/12.
//  Copyright (c) 2012 GIT MAD. All rights reserved.
//

#import "GMViewController.h"
#import "GMFlipViewController.h"

@interface GMViewController ()

@end

@implementation GMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

//*****
// Called when this view is about to segue to another view.  In this case we assume it's seguing to
// the GMFlipViewController, but if we had multiple views, we could differentiate them by checking segue.identifier
//*****
-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    GMFlipViewController *flipVc = (GMFlipViewController *) segue.destinationViewController;
    //randomize to "flip the coin"
    int flip = rand() % 2;
    //set the isHeads property in the flip results view controller
    flipVc.isHeads=flip == 0;
}

@end
