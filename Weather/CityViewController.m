//
//  CityViewController.m
//  Weather
//
//  Created by Tye Blackie on 2017-08-02.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "CityViewController.h"

@interface CityViewController ()

@end

@implementation CityViewController

-(instancetype) initWithCity:(City*)city{
    self = [super init];
    if (self) {
        _city = city;
    }
        return self;
}

-(void) showWeatherDetails{

    DetailedViewController *weatherDetails = [[DetailedViewController alloc] initWithCity:self.city];
    [self.navigationController pushViewController:weatherDetails animated:YES];
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *detailsButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [detailsButton setTitle:@"Details" forState:UIControlStateNormal];
    [detailsButton addTarget:self action:@selector(showWeatherDetails) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:detailsButton];
    detailsButton.translatesAutoresizingMaskIntoConstraints = NO;
    self.detailsButton = detailsButton;
 
    
    NSLayoutConstraint *detailsButtonRightConstraint = [NSLayoutConstraint constraintWithItem:detailsButton
                                                                                attribute:NSLayoutAttributeRight
                                                                                relatedBy:NSLayoutRelationEqual
                                                                                   toItem:self.view
                                                                                attribute:NSLayoutAttributeRight
                                                                               multiplier:1.0
                                                                                 constant:-30.0];
    detailsButtonRightConstraint.active = YES;
                                                    
    NSLayoutConstraint *detailsButtonLeftConstraint = [NSLayoutConstraint constraintWithItem:detailsButton
                                                                                   attribute:NSLayoutAttributeWidth
                                                                                   relatedBy:NSLayoutRelationEqual
                                                                                      toItem:nil
                                                                                   attribute:NSLayoutAttributeNotAnAttribute
                                                                                  multiplier:1.0
                                                                                    constant:75.0];
    detailsButtonLeftConstraint.active = YES;
    
    NSLayoutConstraint *detailsButtonTopConstraint = [NSLayoutConstraint constraintWithItem:detailsButton
                                                                                    attribute:NSLayoutAttributeTop
                                                                                    relatedBy:NSLayoutRelationEqual
                                                                                       toItem:self.view
                                                                                    attribute:NSLayoutAttributeTop
                                                                                   multiplier:1.0
                                                                                     constant:80.0];
    detailsButtonTopConstraint.active = YES;
    
    //
    
    UILabel *cityName = [[UILabel alloc]initWithFrame:CGRectMake(150, 150, 150, 30)];
    cityName.text = self.city.name;
    cityName.backgroundColor = [UIColor clearColor];
    cityName.textColor = [UIColor whiteColor];
    cityName.textAlignment = NSTextAlignmentLeft;
    [self.view addSubview:cityName];
    

    UIImageView *weatherPhoto = [[UIImageView alloc] initWithFrame:CGRectZero];
    weatherPhoto.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:weatherPhoto];
    weatherPhoto.image = self.city.photo;
    
    NSLayoutConstraint *weatherPhotoTopConstraint = [NSLayoutConstraint constraintWithItem:weatherPhoto
                                                                                  attribute:NSLayoutAttributeCenterY
                                                                                  relatedBy:NSLayoutRelationEqual
                                                                                     toItem:self.view
                                                                                  attribute:NSLayoutAttributeCenterY
                                                                                 multiplier:1.0
                                                                                   constant:1.0];
    weatherPhotoTopConstraint.active = YES;
    
    NSLayoutConstraint *weatherPhotoRightConstraint = [NSLayoutConstraint constraintWithItem:weatherPhoto
                                                                                 attribute:NSLayoutAttributeCenterX
                                                                                 relatedBy:NSLayoutRelationEqual
                                                                                    toItem:self.view
                                                                                 attribute:NSLayoutAttributeCenterX
                                                                                multiplier:1.0
                                                                                  constant:1.0];
    weatherPhotoRightConstraint.active = YES;
    
    
    
    
    // Do any additional setup after loading the view.
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

@end
