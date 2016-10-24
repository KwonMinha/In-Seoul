//
//  RandomViewController.m
//  H_01
//
//  Created by SWUComputer on 2016. 10. 23..
//  Copyright © 2016년 student. All rights reserved.
//

#import "RandomViewController.h"

#import "LotteWorldViewController.h"
#import "CoaxViewController.h"
#import "OlympicParkViewController.h"
#import "SevitIslandViewController.h"
#import "MyeongDongViewController.h"
#import "SeoulTowerViewController.h"

@interface RandomViewController ()

@end

@implementation RandomViewController

@synthesize info, viewHidden;
@synthesize coaxButton, coaxView;
@synthesize sevitView, sevitButton;
@synthesize lotteView, lotteButton;
@synthesize myeongView, myeongButton;
@synthesize olyView, olyButton;
@synthesize seoulButton, seoulView;

#define MAX_NUM 6

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // View값 : 처음엔 숨기기
    started = NO;
    [self.viewHidden setHidden:YES];
    [self.coaxView setHidden:YES];
    [self.lotteView setHidden:YES];
    [self.sevitView setHidden:YES];
    [self.myeongView setHidden:YES];
    [self.olyView setHidden:YES];
    [self.seoulView setHidden:YES];
}

// 어떤 세그웨이로 갈 것인지 정의
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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Picker View 컴포넌트의 수
- (NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

// 컴포넌트 안의 열의 수
- (NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return MAX_NUM;
}

// Picker View 열 높이
- (CGFloat) pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component {
    return 120;
}

-(UIView *) pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view {
    // 인덱스에 따른 이미지 지정
    NSString *imagePath = [NSString stringWithFormat:@"pimage%d.png", row]; // Image 준비
    UIImage *image = [UIImage imageNamed:imagePath];
    UIImageView *imageView; // 이미지가 보여질 준비
    if (nil == view) { // View가 없다면
        imageView = [[UIImageView alloc] initWithImage:image]; // Image View 만들기
        imageView.frame = CGRectMake(0, 0, 300, 125); // Image View 위치
    }
    else {
        imageView = (UIImageView *)view;
        imageView.image = image;
    }
    return imageView;
}

- (IBAction)selectRandom:(id)sender {
    // 랜덤 숫자 만들기 0~6
    if(started ==NO){
        int r = arc4random() % MAX_NUM;
        [self.picker selectRow:r inComponent:0 animated:YES];
        
        [self.viewHidden setHidden:NO];
        started = YES;
        
        // 각각의 Index값에 따라 장소에 맞는 Label반환
        NSInteger index = [self.picker selectedRowInComponent:0];
        if(index == 0) {
            [self.coaxView setHidden:NO]; // Sub View로 Again, Label, Detail 관리
            info.text = @"Coax";
        }
        else if (index == 1) {
            [self.sevitView setHidden:NO];
            info.text = @"Sevit Island";
        }
        else if (index == 2) {
            [self.lotteView setHidden:NO];
            info.text = @"Lotte World";
        }
        else if (index == 3) {
            [self.myeongView setHidden:NO];
            info.text = @"Myeong-Dong";
        }
        else if (index == 4) {
            [self.olyView setHidden:NO];
            info.text = @"Olympin Park";
        }
        else if (index == 5) {
            [self.seoulView setHidden:NO];
            info.text = @"Seoul Tower";
        }

    }
}

// 랜덤선택 초기화 후 다시 랜덤을 돌리기 위한 버튼
- (IBAction)selectAgain:(id)sender {
    
    [self.viewHidden setHidden:YES];
    [self.picker selectRow:0 inComponent:0 animated:YES];
    started = NO;
}


@end