//
//  TestAutolayoutController.h
//  TestAutolayoutAnimation
//
//  Created by Doug Hill on 12/28/16.
//  Copyright © 2016 Doug Hill. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TestAutolayoutController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *containerView;
@property (weak, nonatomic) IBOutlet UILabel *theLabel;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *containerWidthConstraint;

- (IBAction)animateIt:(id)sender;

@end
