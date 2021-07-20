//
//  ControlButton.h
//  RSSchool_T8
//
//  Created by Viktor Krasilnikov on 7/19/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ControlButton : UIButton

- (void)configureDefault;
- (void)configureDisabled;
- (void)configureHighlited;

@end

NS_ASSUME_NONNULL_END
