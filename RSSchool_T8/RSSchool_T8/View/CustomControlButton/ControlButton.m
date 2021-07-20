//
//  ControlButton.m
//  RSSchool_T8
//
//  Created by Viktor Krasilnikov on 7/19/21.
//

#import "ControlButton.h"

@implementation ControlButton

-(void)awakeFromNib {
    [super awakeFromNib];
    
    [self.layer setBackgroundColor:UIColor.whiteColor.CGColor];
    [self.layer setCornerRadius:10.0f];
    [self.layer setShadowOffset:CGSizeZero];
    [self.layer setMasksToBounds:NO];
    
    [self configureDefault];
}

- (void)configureHighlited{
    [self setEnabled:YES];
    [self setAlpha:1];
    [self.layer setShadowOpacity:1.0];
    [self.layer setShadowRadius:4.0];
    [self.layer setShadowColor:UIColor.blackColor.CGColor];
}

- (void)configureDefault {
    [self setEnabled:YES];
    [self setAlpha:1];
    [self.layer setShadowOpacity:0.25];
    [self.layer setShadowRadius:2.0];
    [self.layer setShadowColor:UIColor.blackColor.CGColor];
}

- (void)configureDisabled{
    [self setEnabled:NO];
    [self setAlpha:0.5];
    [self.layer setShadowOpacity:0.25];
    [self.layer setShadowRadius:2.0];
    [self.layer setShadowColor:[UIColor colorNamed:@"Light Green Sea"].CGColor];
}

- (void)highlight:(BOOL)highlighted {
    [self highlight:highlighted];
    if (highlighted) {
        [self configureHighlited];
    } else {
        if (self.isEnabled) {
            [self configureDefault];
        } else {
            [self configureDisabled];
        }
    }
}

@end
