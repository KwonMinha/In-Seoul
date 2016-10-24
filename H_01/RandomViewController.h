//
//  RandomViewController.h
//  H_01
//
//  Created by SWUComputer on 2016. 10. 23..
//  Copyright © 2016년 student. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RandomViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate> {
    BOOL started;
}


@property (strong, nonatomic) IBOutlet UIPickerView *picker;
@property (strong, nonatomic) IBOutlet UILabel *info;
@property (strong, nonatomic) IBOutlet UIView *viewHidden;

// 랜덤 선택된 장소에 따라 각각의 상세정보 View와 연결하기 위함
@property (strong, nonatomic) IBOutlet UIView *coaxView; // 랜덤선택 완료 후 Again, Label, Detail을 다룰 Sub View
@property (strong, nonatomic) IBOutlet UIView *coaxButton; // 연결 Button

@property (strong, nonatomic) IBOutlet UIView *sevitView;
@property (strong, nonatomic) IBOutlet UIButton *sevitButton;

@property (strong, nonatomic) IBOutlet UIButton *lotteButton;
@property (strong, nonatomic) IBOutlet UIView *lotteView;

@property (strong, nonatomic) IBOutlet UIButton *myeongButton;
@property (strong, nonatomic) IBOutlet UIView *myeongView;

@property (strong, nonatomic) IBOutlet UIButton *olyButton;
@property (strong, nonatomic) IBOutlet UIView *olyView;

@property (strong, nonatomic) IBOutlet UIButton *seoulButton;
@property (strong, nonatomic) IBOutlet UIView *seoulView;


- (IBAction)selectRandom:(id)sender;
- (IBAction)selectAgain:(id)sender;


@end

