//
//  CustomBarButton.m
//  RSSchool_T8
//
//  Created by Viktor Krasilnikov on 7/17/21.
//

#import "BarButton.h"

@implementation BarButton

- (void)awakeFromNib {
    [super awakeFromNib];
    [self configureFont];
}

- (void)configureFont {
    _barButtonFont = [NSDictionary dictionaryWithObjectsAndKeys:[UIFont fontWithName:@"Montserrat-Regular" size:17.0f], NSFontAttributeName, nil];
    [self setTitleTextAttributes:_barButtonFont forState:UIControlStateNormal];
    [self setTitleTextAttributes:_barButtonFont forState:UIControlStateHighlighted];
}

@end
