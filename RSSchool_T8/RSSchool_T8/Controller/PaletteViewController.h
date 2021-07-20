//
//  PaletteViewController.h
//  RSSchool_T8
//
//  Created by Viktor Krasilnikov on 7/18/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol PaletteVCDelegate <NSObject>
- (void)setPalette:(NSMutableOrderedSet<UIColor *>*)colors;
@end

@interface PaletteViewController : UIViewController

@property NSMutableOrderedSet<UIColor *>* selectedColors;
@property NSTimer* bgTimer;
@property(weak) id<PaletteVCDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
