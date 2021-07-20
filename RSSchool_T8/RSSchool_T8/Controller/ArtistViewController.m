//
//  ViewController.m
//  RSSchool_T8
//
//  Created by Viktor Krasilnikov on 7/15/21.
//

#import "ArtistViewController.h"
#import "ControlButton.h"
#import "BarButton.h"
#import "CanvasView.h"
#import "PaletteViewController.h"
#import "RSSchool_T8-Swift.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet BarButton *drawingsButton;
@property (weak, nonatomic) IBOutlet ControlButton *paletteButton;
@property (weak, nonatomic) IBOutlet ControlButton *timerButton;
@property (weak, nonatomic) IBOutlet ControlButton *drawButton;
@property (weak, nonatomic) IBOutlet ControlButton *shareButton;

- (IBAction)openTimer:  (UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _timerValue   = 1;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    //setting up NavBar appereance
    [_drawingsButton configureFont];
    self.drawingsButton.tintColor = [UIColor colorNamed:@"Light Green Sea"];
    
   
    [_paletteButton configureDefault];
    [_timerButton configureDefault];
    [_drawButton configureDefault];
    [_shareButton configureDefault];
    
}

- (IBAction)openPalette:(id)sender {
    PaletteViewController *paletteVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"PaletteVC"];
    [self addChildViewController:paletteVC];
    paletteVC.view.frame = [self frameForChildVC];
    [self.view addSubview:paletteVC.view];
    [paletteVC didMoveToParentViewController:self];
}


- (void)setTimerWithValue:(float)value {
    _timerValue = value;
}

- (IBAction)openTimer:(UIButton *)sender {
    TimerViewController *timerVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"Timer"];
    timerVC.timerValue = [[NSNumber alloc] initWithFloat:_timerValue];
    timerVC.delegate = self;
    timerVC.view.frame = [self frameForChildVC];
    [self addChildViewController:timerVC];
    [self.view addSubview:timerVC.view];
    [timerVC didMoveToParentViewController:self];
   
}


- (void)paletteColorPicked:(nonnull NSMutableOrderedSet<UIColor *> *)colors {
    //_colorPicked = colors;
}

- (IBAction)performDrawing:(UIButton *)sender {
    [_paletteButton configureHighlited];
    [_timerButton configureHighlited];
    [_drawButton configureHighlited];
    [_shareButton configureHighlited];
    
    
}

- (CGRect)frameForChildVC
{
    return CGRectMake(0.0,
                      333.5,
                      375,
                      333.5);
}

- (IBAction)planetDrawButton:(id)sender {
}



@end
