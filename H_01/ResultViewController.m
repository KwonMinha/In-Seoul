//
//  ResultViewController.m
//  H_01
//
//  Created by SWUComputer on 2016. 10. 23..
//  Copyright © 2016년 student. All rights reserved.
//

#import "ResultViewController.h"
#import "LotteWorldViewController.h"
#import "CoaxViewController.h"
#import "OlympicParkViewController.h"
#import "SevitIslandViewController.h"
#import "MyeongDongViewController.h"
#import "SeoulTowerViewController.h"

@interface ResultViewController ()

@end

@implementation ResultViewController

@synthesize info, infoLabel, testLabel;
@synthesize lotteWorldView, lotteWorldButton;
@synthesize myeongDongView, myeongDongButton;
@synthesize sevitIslandView, sevitIslandButton;
@synthesize coaxView, coaxButton;
@synthesize olympicParkView, olympicParkButton;
@synthesize seoulTowerButton,seoulTowerView;


- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
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
    [self.lotteWorldView setHidden:YES];
    [self.seoulTowerView setHidden:YES];
    [self.coaxView setHidden:YES];
    [self.myeongDongView setHidden:YES];
    [self.sevitIslandView setHidden:YES];
    [self.olympicParkView setHidden:YES];
    infoLabel.text = [NSString stringWithFormat:@"Search : %@", info];
    
    // Lotte World 검사 문자열
    NSString *lotteStr1 = @"lotteworld";
    NSString *lotteStr2 = @"Lotte World";
    
    // Seoul Tower 검사 문자열
    NSString *seoulStr1 = @"seoultower";
    NSString *seoulStr2 = @"Seoul Tower";
    
    // Coax 검사 문자열
    NSString *coaxStr1 = @"Coax";
    
    // Myeong Dong 검사 문자열
    NSString *myeongStr1 = @"myeongdong";
    NSString *myeongStr2 = @"Myeong Dong";
    
    // Sevit Island 검사 문자열
    NSString *sevitStr1 = @"sevitisland";
    NSString *sevitStr2 = @"Sevit Island";
    
    // Olympic Park 검사 문자열
    NSString *olympicStr1 = @"olympicpark";
    NSString *olympicStr2 = @"Olympic Park";
    
    // Lotte World 검색 여부 판단
    if ([info compare:lotteStr1
             options:NSCaseInsensitiveSearch]  == NSOrderedSame
        ||
        [info compare:lotteStr2
             options:NSCaseInsensitiveSearch] == NSOrderedSame) {
            [self.lotteWorldView setHidden:NO];
            testLabel.text = [NSString stringWithFormat:@"%@ is searched", lotteStr2];
        }
    // Seoul Tower 검색 여부 판단
    else if ([info compare:seoulStr1
                   options:NSCaseInsensitiveSearch]  == NSOrderedSame
             ||
             [info compare:seoulStr2
                   options:NSCaseInsensitiveSearch] == NSOrderedSame) {
                 [self.seoulTowerView setHidden:NO];
                 testLabel.text = [NSString stringWithFormat:@"%@ is searched", seoulStr2];
             }
    // Coax 검색 여부 판단
    else if ([info compare:coaxStr1
                   options:NSCaseInsensitiveSearch]  == NSOrderedSame) {
                 [self.coaxView setHidden:NO];
                 testLabel.text = [NSString stringWithFormat:@"%@ is searched", coaxStr1];
             }
    // Myeong Dong 검색 여부 판단
    else if ([info compare:myeongStr1
                   options:NSCaseInsensitiveSearch]  == NSOrderedSame
             ||
             [info compare:myeongStr2
                   options:NSCaseInsensitiveSearch] == NSOrderedSame) {
                 [self.myeongDongView setHidden:NO];
                 testLabel.text = [NSString stringWithFormat:@"%@ is searched", myeongStr2];
             }
    // Sevit Island 검색 여부 판단
    else if ([info compare:sevitStr1
                   options:NSCaseInsensitiveSearch]  == NSOrderedSame
             ||
             [info compare:sevitStr2
                   options:NSCaseInsensitiveSearch] == NSOrderedSame) {
                 [self.sevitIslandView setHidden:NO];
                 testLabel.text = [NSString stringWithFormat:@"%@ is searched", sevitStr2];
             }
    // Olympic Park 검색 여부 판단
    else if ([info compare:olympicStr1
                   options:NSCaseInsensitiveSearch]  == NSOrderedSame
             ||
             [info compare:olympicStr2
                   options:NSCaseInsensitiveSearch] == NSOrderedSame) {
                 [self.olympicParkView setHidden:NO];
                 testLabel.text = [NSString stringWithFormat:@"%@ is searched", olympicStr2];
             }
    else {
        testLabel.text = @"No results were found for your search";
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end