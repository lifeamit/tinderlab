//
//  ProfileViewController.m
//  tinderlab
//
//  Created by Amit Agarwal on 9/18/15.
//  Copyright © 2015 Amit Agarwal. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *doneButtonView;
- (IBAction)onDoneTap:(UITapGestureRecognizer *)sender;

@end

@implementation ProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)onDoneTap:(UITapGestureRecognizer *)sender {
    NSLog(@"done clicked");
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
