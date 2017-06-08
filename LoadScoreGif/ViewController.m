//
//  ViewController.m
//  LoadScoreGif
//
//  Created by zj on 17/4/27.
//  Copyright © 2017年 zj. All rights reserved.
//

#import "ViewController.h"
#import "CGImageGIFView.h"

#define SCREEN_WIDTH ([[UIScreen mainScreen] bounds].size.width)
#define SCREEN_HEIGHT ([[UIScreen mainScreen] bounds].size.height)

@interface ViewController ()

@property (nonatomic, strong) CGImageGIFView *gifView;
@property (nonatomic, strong) UILabel *scoreLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
//    [self loadGIFWithCGImage];
    
    [self.view addSubview:self.gifView];
//    [self.gifView addSubview:self.scoreLabel];
    
}



//- (UILabel *)scoreLabel
//{
//    if (!_scoreLabel) {
//        _scoreLabel = [[UILabel alloc] initWithFrame:CGRectMake(SCREEN_WIDTH/2-50, SCREEN_WIDTH*2/9, 100, 60)];
//        _scoreLabel.text = @"99";
//        _scoreLabel.textAlignment = NSTextAlignmentCenter;
//        _scoreLabel.textColor = [UIColor blackColor];
//        _scoreLabel.font = [UIFont systemFontOfSize:60];
//    }
//    return _scoreLabel;
//}

//-(void)loadGIFWithCGImage
//{
//    NSString *path = [[NSBundle mainBundle] pathForResource:@"IMG_0217" ofType:@"GIF"];
//    _gifView = [[CGImageGIFView alloc] initWithGIFPath:path];
//    [_gifView setCenter:self.view.center];
//    [self.view addSubview:_gifView];
//    [_gifView startGIF];
//}

- (CGImageGIFView *)gifView
{
    if (!_gifView) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"IMG_0217" ofType:@"GIF"];
        _gifView = [[CGImageGIFView alloc] initWithGIFPath:path];
        _gifView.frame = CGRectMake(0, 64, SCREEN_WIDTH, SCREEN_WIDTH *2/3);
        _gifView.contentMode = UIViewContentModeScaleAspectFit;
        _gifView.scoreString = @"88";
        [_gifView startGIF];
    }
    return _gifView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
