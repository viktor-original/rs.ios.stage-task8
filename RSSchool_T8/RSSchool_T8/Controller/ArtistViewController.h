//
//  ViewController.h
//  RSSchool_T8
//
//  Created by Viktor Krasilnikov on 7/15/21.
//

#import <UIKit/UIKit.h>
#import "PaletteViewController.h"
#import "RSSchool_T8-Swift.h"

@interface ViewController : UIViewController <UIViewControllerTransitioningDelegate, TimerVCDelegate>

@property(nonatomic, copy) NSTimer  *updateTimeSlider;
@property float timerValue;
@property(nonatomic, copy) NSString *drawing;


@end

