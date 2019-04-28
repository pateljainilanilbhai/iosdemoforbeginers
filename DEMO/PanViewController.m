//
//  PanViewController.m
//  GesturesDemo
//
//  Created by Patel on 04/03/1940 Saka.
//  Copyright © 1940 Patel. All rights reserved.
//

#import "PanViewController.h"

@interface PanViewController ()

-(void)moveViewWithGestureRecognizer:(UIPanGestureRecognizer *)panGestureRecognizer;

@end

@implementation PanViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIPanGestureRecognizer *panGestureRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(moveViewWithGestureRecognizer:)];
    [self.testView addGestureRecognizer:panGestureRecognizer];
    UIRotationGestureRecognizer *rotationGestureRecognizer = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(handleRotationWithGestureRecognizer:)];
    [self.testView addGestureRecognizer:rotationGestureRecognizer];
    UIPinchGestureRecognizer *pinchGestureRecognizer = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(handlePinchWithGestureRecognizer:)];
    [self.testView addGestureRecognizer:pinchGestureRecognizer];
    UITapGestureRecognizer *singleTapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleSingleTapGesture:)];
    [self.testView addGestureRecognizer:singleTapGestureRecognizer];
    UITapGestureRecognizer *doubleTapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleDoubleTapGesture:)];
    doubleTapGestureRecognizer.numberOfTapsRequired = 2;
    doubleTapGestureRecognizer.numberOfTouchesRequired = 2;
    [self.testView addGestureRecognizer:doubleTapGestureRecognizer];
    a=[[NSMutableArray alloc] init];
    [a addObject:panGestureRecognizer];
    [a addObject:pinchGestureRecognizer];
    [a addObject:singleTapGestureRecognizer];
    [a addObject:doubleTapGestureRecognizer];
  
    
    for (UIGestureRecognizer *recognizer in a)
        recognizer.delegate = self;
    self.ball.layer.cornerRadius=self.ball.layer.frame.size.height/2;
    accelerometer = [UIAccelerometer sharedAccelerometer];
    accelerometer.updateInterval = 0.01;
    accelerometer.delegate = self;
    [[UIDevice currentDevice] setProximityMonitoringEnabled:YES];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(sensorStateMonitor:) name:@"UIDeviceProximityStateDidChangeNotification" object:nil];
    
  
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


-(void)moveViewWithGestureRecognizer:(UIPanGestureRecognizer *)panGestureRecognizer{
    CGPoint touchLocation = [panGestureRecognizer locationInView:self.view];
    
    self.testView.center = touchLocation;
    
    
    CGPoint velocity = [panGestureRecognizer velocityInView:self.view];
    
    self.horizontalVelocityLabel.text = [NSString stringWithFormat:@"Horizontal Velocity: %.2f points/sec", velocity.x];
    self.verticalVelocityLabel.text = [NSString stringWithFormat:@"Vertical Velocity: %.2f points/sec", velocity.y];
}
-(void)handleRotationWithGestureRecognizer:(UIRotationGestureRecognizer *)rotationGestureRecognizer{
    self.testView.transform = CGAffineTransformRotate(self.testView.transform, rotationGestureRecognizer.rotation);
    
    rotationGestureRecognizer.rotation = 0.0;
}
-(void)handlePinchWithGestureRecognizer:(UIPinchGestureRecognizer *)pinchGestureRecognizer{
    self.testView.transform = CGAffineTransformScale(self.testView.transform, pinchGestureRecognizer.scale, pinchGestureRecognizer.scale);
    
    pinchGestureRecognizer.scale = 1;
}



-(void)handleSingleTapGesture:(UITapGestureRecognizer *)tapGestureRecognizer{
    CGFloat newWidth = 100.0;
    if (self.testView.frame.size.width == 100.0) {
        newWidth = 200.0;
    }
    
    CGPoint currentCenter = self.testView.center;
    
    
    self.testView.layer.cornerRadius++;
    self.testView.backgroundColor=[UIColor greenColor];
    
}


-(void)handleDoubleTapGesture:(UITapGestureRecognizer *)tapGestureRecognizer{

    
    self.testView.layer.cornerRadius++;
    self.testView.backgroundColor=[UIColor orangeColor];
}
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer
shouldRecognizeSimultaneouslyWithGestureRecognizer:
(UIGestureRecognizer *)otherGestureRecognizer
{
    return YES;
}


- (BOOL)shouldAutorotateToInterfaceOrientation:
(UIInterfaceOrientation)interfaceOrientation {
    
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark UIAccelerometerDelegate Methods

- (void)accelerometer:(UIAccelerometer *)meter
        didAccelerate:(UIAcceleration *)acceleration
{
    CGPoint p;
    p.x=acceleration.x*200+(self.view.frame.size.width/2);
    p.y=acceleration.y*200+(self.view.frame.size.height/2);
    self.ball.center=p;
    xLabel.text = [NSString stringWithFormat:@"%f", acceleration.x];
    yLabel.text = [NSString stringWithFormat:@"%f", acceleration.y];
    zLabel.text = [NSString stringWithFormat:@"%f", acceleration.z];
}


- (void)sensorStateMonitor:(NSNotificationCenter *)notification
{
    if ([[UIDevice currentDevice] proximityState] == YES)
    {
//        CGPoint p=self.proximity.center;
//        CGSize x;
//        x.width=self.proximity.frame.size.width+1;
//        x.height=self.proximity.frame.size.height+1;
//
//
//        self.proximity.frame.origin=p;
         NSLog(@"Device is nearer to user.");
    }
    
    else
    {
        NSLog(@"Device is not closer to user.");
    }
}
@end
