//
//  TestAutolayoutController.m
//  TestAutolayoutAnimation
//
//  Created by Doug Hill on 12/28/16.
//  Copyright © 2016 Doug Hill. All rights reserved.
//

#import "TestAutolayoutController.h"

@implementation TestAutolayoutController

- (void) viewDidLoad
{
	[super viewDidLoad];

	self.containerWidthConstraint.constant = self.view.frame.size.width;
}

- (IBAction)animateIt:(id)sender
{
	static BOOL small = NO;

	if( small )
	{
		[self.view layoutIfNeeded];

		self.containerWidthConstraint.constant = self.view.frame.size.width;

		[UIView animateWithDuration:1 animations:
		^{
			[self.view layoutIfNeeded];
		}];
	}
	else
	{
		[self.view layoutIfNeeded];

		self.containerWidthConstraint.constant = self.view.frame.size.width / 2;

		[UIView animateWithDuration:1 animations:
		^{
			[self.view layoutIfNeeded];
		}];
	}

	small = !small;
}

@end
