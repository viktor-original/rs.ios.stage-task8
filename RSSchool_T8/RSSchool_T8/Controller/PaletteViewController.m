//
//  PaletteViewController.m
//  RSSchool_T8
//
//  Created by Viktor Krasilnikov on 7/18/21.
//

#import "PaletteViewController.h"

@interface PaletteViewController ()

- (IBAction)savePaletteButton:(UIButton *)sender;

@end

@implementation PaletteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (IBAction)savePaletteButton:(id)sender {
    [UIView animateWithDuration:0.25 animations:^{
        self.view.frame = CGRectMake(0, self.view.bounds.size.height, self.view.bounds.size.width, self.view.bounds.size.height);
    } completion:^(BOOL finished) {
        [self willMoveToParentViewController:nil];
        [self.view removeFromSuperview];
        [self removeFromParentViewController];
    }];
    
}

@end
