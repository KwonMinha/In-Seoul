//
//  SeoulTowerViewController.m
//  H_01
//
//  Created by SWUComputer on 2016. 10. 23..
//  Copyright © 2016년 student. All rights reserved.
//

#import "SeoulTowerViewController.h"

@interface SeoulTowerViewController ()

@end

@implementation SeoulTowerViewController

@synthesize imageView, seoulImageView;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    seoulImage = [UIImage imageNamed:@"pimage5.png"];
    [seoulImageView setImage:seoulImage];
    
    mainImage = [UIImage imageNamed:@"black.jpg"];
    image1 = [UIImage imageNamed:@"tower1.png"];
    image2 = [UIImage imageNamed:@"tower2.png"];
    image3 = [UIImage imageNamed:@"tower3.png"];
    image4 = [UIImage imageNamed:@"tower4.png"];
    [imageView setImage:mainImage];
    
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

- (IBAction)changeImage:(UISegmentedControl *)sender {
    if([sender selectedSegmentIndex] == 0)
        [imageView setImage:image1];
    else if ([sender selectedSegmentIndex] == 1)
        [imageView setImage:image2];
    else if ([sender selectedSegmentIndex] == 2)
        [imageView setImage:image3];
    else if ([sender selectedSegmentIndex] == 3)
        [imageView setImage:image4];
}
@end
