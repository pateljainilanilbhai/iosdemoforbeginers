//
//  PanViewController.h
//  GesturesDemo
//
//  Created by Patel on 04/03/1940 Saka.
//  Copyright © 1940 Patel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PanViewController : UIViewController <UIAccelerometerDelegate>
{
    NSMutableArray *a;
    UIAccelerometer *accelerometer;
    IBOutlet UILabel *xLabel;
    IBOutlet UILabel *yLabel;
    IBOutlet UILabel *zLabel;
}

@property (weak, nonatomic) IBOutlet UIView *testView;
@property (strong, nonatomic) IBOutlet UIView *ball;
@property (strong, nonatomic) IBOutlet UIView *proximity;

@property (weak, nonatomic) IBOutlet UILabel *horizontalVelocityLabel;

@property (weak, nonatomic) IBOutlet UILabel *verticalVelocityLabel;

@end
