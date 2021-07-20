//
//  NavigationController.m
//  RSSchool_T8
//
//  Created by Viktor Krasilnikov on 7/20/21.
//

#import "NavigationController.h"

@interface NavigationController ()

@end

@implementation NavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIFont fontWithName:@"Montserrat-Regular" size:17.0], NSFontAttributeName, nil]];
    //self.navigationBar.backItem.backBarButtonItem.tintColor = [UIColor colorNamed:@"Light Green Sea"];
}

@end
