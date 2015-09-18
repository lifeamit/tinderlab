//
//  DraggableImageView.m
//  tinderlab
//
//  Created by Amit Agarwal on 9/18/15.
//  Copyright © 2015 Amit Agarwal. All rights reserved.
//

#import "DraggableImageView.h"


@implementation DraggableImageView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        NSLog(@"initWithCode overridden");
    }
    return self;
}



- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        NSLog(@"initWithFrame overridden");
    }
    return self;
}


- (void) initSubViews {

    
    
//    UINib *nib = [UINib nibWithNibName:@"DraggableImageView" bundle:nil];
//    [nib instantiateWithOwner:self options:nil];
//    self.contentView.frame = self.bounds;
//    [self addSubview:self.contentView];
    
    
    
}

- (IBAction)onCardDrag:(UIPanGestureRecognizer *)sender {
//    NSLog(@"image dragged");
    CGPoint point = [sender translationInView:self.cardImageView];
    
    if (sender.state == UIGestureRecognizerStateBegan) {
        self.cardInitialCenter = self.cardImageView.center;
    } else if (sender.state == UIGestureRecognizerStateChanged) {
        self.cardImageView.center = CGPointMake(self.cardInitialCenter.x + point.x, self.cardInitialCenter.y + point.y);
    } else if (sender.state == UIGestureRecognizerStateEnded) {
        NSLog(@"Gesture ended at: %f, %f", point.x, point.y);
    }
}
@end
