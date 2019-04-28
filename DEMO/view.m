//
//  view.m
//  cont
//
//  Created by Patel on 03/03/1940 Saka.
//  Copyright © 1940 Patel. All rights reserved.
//

#import "view.h"

@interface view ()
{
    
    NSArray *nature;
}
@end

@implementation view


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"Cell"];

    nature=[NSArray arrayWithObjects:@"images-2.jpeg",@"images-3.jpeg",@"images-4.jpeg",@"images-5.jpeg",@"images-2.jpeg",@"images-3.jpeg",@"images-4.jpeg",@"images-2.jpeg",@"images-3.jpeg",@"images-4.jpeg",@"images-2.jpeg",@"images-3.jpeg",@"images-4.jpeg",@"images-5.jpeg",@"images-2.jpeg",@"images-3.jpeg",@"images-4.jpeg",@"images-2.jpeg",@"images-3.jpeg",@"images-4.jpeg",@"images-2.jpeg",@"images-3.jpeg",@"images-4.jpeg",@"images-5.jpeg",@"images-2.jpeg",@"images-3.jpeg",@"images-4.jpeg",@"images-2.jpeg",@"images-3.jpeg",@"images-4.jpeg",@"images-2.jpeg",@"images-3.jpeg",@"images-4.jpeg",@"images-5.jpeg",@"images-2.jpeg",@"images-3.jpeg",@"images-4.jpeg",@"images-2.jpeg",@"images-3.jpeg",@"images-4.jpeg",@"images-2.jpeg",@"images-3.jpeg",@"images-4.jpeg",@"images-5.jpeg",@"images-2.jpeg",@"images-3.jpeg",@"images-4.jpeg",@"images-2.jpeg",@"images-3.jpeg",@"images-4.jpeg",@"images-2.jpeg",@"images-3.jpeg",@"images-4.jpeg",@"images-5.jpeg",@"images-2.jpeg",@"images-3.jpeg",@"images-4.jpeg",@"images-2.jpeg",@"images-3.jpeg",@"images-4.jpeg",@"images-2.jpeg",@"images-3.jpeg",@"images-4.jpeg",@"images-5.jpeg",@"images-2.jpeg",@"images-3.jpeg",@"images-4.jpeg",@"images-2.jpeg",@"images-3.jpeg",@"images-4.jpeg",@"images-2.jpeg",@"images-3.jpeg",@"images-4.jpeg",@"images-5.jpeg",@"images-2.jpeg",@"images-3.jpeg",@"images-4.jpeg",@"images-2.jpeg",@"images-3.jpeg",@"images-4.jpeg",@"images-2.jpeg",@"images-3.jpeg",@"images-4.jpeg",@"images-5.jpeg",@"images-2.jpeg",@"images-3.jpeg",@"images-4.jpeg",@"images-2.jpeg",@"images-3.jpeg",@"images-4.jpeg",@"images-2.jpeg",@"images-3.jpeg",@"images-4.jpeg",@"images-5.jpeg",@"images-2.jpeg",@"images-3.jpeg",@"images-4.jpeg",@"images-2.jpeg",@"images-3.jpeg",@"images-4.jpeg",@"images-2.jpeg",@"images-3.jpeg",@"images-4.jpeg",@"images-5.jpeg",@"images-2.jpeg",@"images-3.jpeg",@"images-4.jpeg",@"images-2.jpeg",@"images-3.jpeg",@"images-4.jpeg",@"images-2.jpeg",@"images-3.jpeg",@"images-4.jpeg",@"images-5.jpeg",@"images-2.jpeg",@"images-3.jpeg",@"images-4.jpeg",@"images-2.jpeg",@"images-3.jpeg",@"images-4.jpeg"@"images-2.jpeg",@"images-3.jpeg",@"images-4.jpeg",@"images-5.jpeg",@"images-2.jpeg",@"images-3.jpeg",@"images-4.jpeg",@"images-2.jpeg",@"images-3.jpeg",@"images-4.jpeg", nil];
    NSLog(@"%@", [NSString stringWithFormat:@"%lu",(unsigned long)nature.count]);
     [self.navigationController.navigationBar setHidden:false];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    NSLog(@"called");
    return nature.count;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"method");
    static NSString *identifier = @"Cell";
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    cell.backgroundColor=[UIColor blueColor];
    UIImageView *dot =[[UIImageView alloc] initWithFrame:CGRectMake(0,0,100,100)];
    dot.image=[UIImage imageNamed:[nature objectAtIndex:indexPath.row]];
    [cell addSubview:dot];
    NSLog([nature objectAtIndex:indexPath.row]);
    return cell;
}

#pragma mark <UICollectionViewDelegate>


- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}


- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}



- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}


@end
