//
//  CardsViewController.m
//  tinderlab
//
//  Created by Amit Agarwal on 9/18/15.
//  Copyright © 2015 Amit Agarwal. All rights reserved.
//

#import "CardsViewController.h"
#import "DraggableImageView.h"
@interface CardsViewController ()

@property (nonatomic, strong) DraggableImageView *draggableView;

@end

@implementation CardsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.draggableView = [[UINib nibWithNibName:@"DraggableImageView" bundle:nil] instantiateWithOwner:self options:nil][0];
    
    [self.view addSubview:self.draggableView];
    
//    self.view.addSubview(self.draggableView);
    // Do any additional setup after loading the view.
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    CGRect f = self.draggableView.frame;
    f.size.width = self.view.bounds.size.width;
        f.size.height = self.view.bounds.size.height;
    self.draggableView.frame = f;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
