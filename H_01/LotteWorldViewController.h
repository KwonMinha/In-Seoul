//
//  LotteWorldViewController.h
//  H_01
//
//  Created by SWUComputer on 2016. 10. 23..
//  Copyright © 2016년 student. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LotteWorldViewController : UIViewController {
    UIImage *lotteImage;
    UIImage *mainImage;
    UIImage *image1;
    UIImage *image2;
    UIImage *image3;
}



@property (strong, nonatomic) IBOutlet UIImageView *lotteImageView;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;

- (IBAction)changeImage:(UISegmentedControl *)sender;

@end
