//
//  ResultViewController.h
//  H_01
//
//  Created by SWUComputer on 2016. 10. 23..
//  Copyright © 2016년 student. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ResultViewController : UIViewController{
    BOOL started;
}

@property (strong, nonatomic) IBOutlet UILabel *infoLabel;
@property (strong, nonatomic) NSString *info;
@property (strong, nonatomic) IBOutlet UILabel *testLabel;

@property (strong, nonatomic) IBOutlet UIButton *lotteWorldButton;
@property (strong, nonatomic) IBOutlet UIView *lotteWorldView;

@property (strong, nonatomic) IBOutlet UIView *seoulTowerView;
@property (strong, nonatomic) IBOutlet UIButton *seoulTowerButton;

@property (strong, nonatomic) IBOutlet UIView *olympicParkView;
@property (strong, nonatomic) IBOutlet UIButton *olympicParkButton;

@property (strong, nonatomic) IBOutlet UIView *sevitIslandView;
@property (strong, nonatomic) IBOutlet UIButton *sevitIslandButton;

@property (strong, nonatomic) IBOutlet UIView *coaxView;
@property (strong, nonatomic) IBOutlet UIButton *coaxButton;

@property (strong, nonatomic) IBOutlet UIView *myeongDongView;
@property (strong, nonatomic) IBOutlet UIButton *myeongDongButton;


@end