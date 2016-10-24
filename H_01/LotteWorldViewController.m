//
//  LotteWorldViewController.m
//  H_01
//
//  Created by SWUComputer on 2016. 10. 23..
//  Copyright © 2016년 student. All rights reserved.
//

#import "LotteWorldViewController.h"

@interface LotteWorldViewController ()

@end

@implementation LotteWorldViewController

@synthesize imageView, lotteImageView;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    lotteImage = [UIImage imageNamed:@"pimage2.png"]; // 상단 Image View
    [lotteImageView setImage:lotteImage];
    
    mainImage = [UIImage imageNamed:@"black.jpg"]; // 하단 세그먼트 별 Image View
    image1 = [UIImage imageNamed:@"lotte1.png"];
    image2 = [UIImage imageNamed:@"lotte2.png"];
    image3 = [UIImage imageNamed:@"lotte3.png"];
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
}
@end
