//
//  DraggableImageView.h
//  tinderlab
//
//  Created by Amit Agarwal on 9/18/15.
//  Copyright © 2015 Amit Agarwal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DraggableImageView : UIView
@property (weak, nonatomic) IBOutlet UIImageView *cardImageView;
- (IBAction)onCardDrag:(UIPanGestureRecognizer *)sender;
@property CGPoint cardInitialCenter;

@end
