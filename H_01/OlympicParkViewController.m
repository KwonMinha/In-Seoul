//
//  OlympicParkViewController.m
//  H_01
//
//  Created by SWUComputer on 2016. 10. 23..
//  Copyright © 2016년 student. All rights reserved.
//

#import "OlympicParkViewController.h"

@interface OlympicParkViewController ()

@end

@implementation OlympicParkViewController

@synthesize imageView, olympicImageView;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    olympicImage = [UIImage imageNamed:@"pimage4.png"]; // 상단 Image View
    [olympicImageView setImage:olympicImage];
    
    mainImage = [UIImage imageNamed:@"black.jpg"]; // 하단 세그먼트 별 Image View
    image1 = [UIImage imageNamed:@"olym1.png"];
    image2 = [UIImage imageNamed:@"olym2.png"];
    image3 = [UIImage imageNamed:@"olym3.png"];
    image4 = [UIImage imageNamed:@"olym4.png"];
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

// 세그먼트의 Index값에 따른 Image 지정
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
