//
//  CardsViewController.m
//  tinderlab
//
//  Created by Amit Agarwal on 9/18/15.
//  Copyright © 2015 Amit Agarwal. All rights reserved.
//

#import "CardsViewController.h"

@interface CardsViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *cardView;

@end

@implementation CardsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)cardDragged:(UIPanGestureRecognizer *)sender {
    CGPoint point = [sender translationInView:self.cardView];

    if (sender.state == UIGestureRecognizerStateBegan) {
        self.cardInitialCenter = self.cardView.center;
    } else if (sender.state == UIGestureRecognizerStateChanged) {
        self.cardView.center = CGPointMake(self.cardInitialCenter.x + point.x, self.cardInitialCenter.y + point.y);
    } else if (sender.state == UIGestureRecognizerStateEnded) {
        NSLog(@"Gesture ended at: %f, %f", point.x, point.y);
    }
}

@end
