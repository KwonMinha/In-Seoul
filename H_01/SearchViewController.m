//
//  SearchViewController.m
//  H_01
//
//  Created by SWUComputer on 2016. 10. 23..
//  Copyright © 2016년 student. All rights reserved.
//

#import "SearchViewController.h"
#import "ResultViewController.h"

#import "LotteWorldViewController.h"
#import "CoaxViewController.h"
#import "OlympicParkViewController.h"
#import "SevitIslandViewController.h"
#import "MyeongDongViewController.h"
#import "SeoulTowerViewController.h"

@interface SearchViewController ()

@end

@implementation SearchViewController

@synthesize searchText, searchButton;

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([segue.identifier isEqualToString:@"toResultView"]) {
        ResultViewController *rc = [segue destinationViewController];
        rc.title = @"Result";
        rc.info = [NSString stringWithFormat:@"%@", searchText.text];
    }
    if([segue.identifier isEqualToString:@"toLotteWorldView"]) {
        LotteWorldViewController *rc = [segue destinationViewController];
        rc.title = @"Lotte World";
    }
    if([segue.identifier isEqualToString:@"toMyeongDongView"]) {
        MyeongDongViewController *rc = [segue destinationViewController];
        rc.title = @"Myeong-dong";
    }
    if([segue.identifier isEqualToString:@"toSeoulTowerView"]) {
        SeoulTowerViewController *rc = [segue destinationViewController];
        rc.title = @"Seoul Tower";
    }
    if([segue.identifier isEqualToString:@"toCoaxView"]) {
        CoaxViewController *rc = [segue destinationViewController];
        rc.title = @"Coax";
    }
    if([segue.identifier isEqualToString:@"toSevitIslandView"]) {
        SevitIslandViewController *rc = [segue destinationViewController];
        rc.title = @"Sevit Island";
    }
    if([segue.identifier isEqualToString:@"toOlympicParkView"]) {
        OlympicParkViewController *rc = [segue destinationViewController];
        rc.title = @"Olympic Park";
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
