//
//  ViewController.m
//  H_01
//
//  Created by SWUComputer on 2016. 10. 23..
//  Copyright © 2016년 student. All rights reserved.
//

#import "ViewController.h"
#import "RandomViewController.h"
#import "SearchViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize mainImageView, randomButton, searchButton;

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Random View로 갈 때
    if([segue.identifier isEqualToString:@"toRandomView"]) {
        RandomViewController *rc = [segue destinationViewController];
        rc.title = randomButton.titleLabel.text; // 네비게이터의 타이틀 값 지정
    }
    // Search View로 갈 때
    if([segue.identifier isEqualToString:@"toSearchView"]) {
        SearchViewController *sc = [segue destinationViewController];
        sc.title = searchButton.titleLabel.text;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    SeoulAtoZ = [UIImage imageNamed:@"inSeoul.jpg"]; // 메인 이미지 지정
    [mainImageView setImage:SeoulAtoZ];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
