//
//  CoaxViewController.m
//  H_01
//
//  Created by SWUComputer on 2016. 10. 23..
//  Copyright © 2016년 student. All rights reserved.
//

#import "CoaxViewController.h"

@interface CoaxViewController ()

@end

@implementation CoaxViewController

@synthesize imageView, coaxImageView;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    coaxImage = [UIImage imageNamed:@"pimage0.png"];
    [coaxImageView setImage:coaxImage];
    
    mainImage = [UIImage imageNamed:@"black.jpg"];
    image1 = [UIImage imageNamed:@"coax1.png"];
    image2 = [UIImage imageNamed:@"coax2.png"];
    image3 = [UIImage imageNamed:@"coax3.png"];
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
}
@end
