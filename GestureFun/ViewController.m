//
//  ViewController.m
//  GestureFun
//
//  Created by Jeremy Petter on 2016-09-15.
//  Copyright © 2016 JeremyPetter. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)respondToPan:(UIPanGestureRecognizer *)sender {

    CGPoint location = [sender locationInView:self.view];
    CGPoint translation = [sender translationInView:self.view];

    if (sender.state == UIGestureRecognizerStateBegan) {
        NSLog(@"pan began! \nLocation: x %f, y %f \nTranslation:: x %f, y %f " , location.x, location.y, translation.x, translation.y);

    }
    if (sender.state == UIGestureRecognizerStateChanged) {
        NSLog(@"pan changed! \nLocation: x %f, y %f \nTranslation:: x %f, y %f " , location.x, location.y, translation.x, translation.y);
    }
    if (sender.state == UIGestureRecognizerStateEnded) {
        NSLog(@"pan ended! \nLocation: x %f, y %f \nTranslation:: x %f, y %f " , location.x, location.y, translation.x, translation.y);
    }
}

@end
