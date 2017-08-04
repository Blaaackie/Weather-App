//
//  CityViewController.h
//  Weather
//
//  Created by Tye Blackie on 2017-08-02.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "City.h"
#import "DetailedViewController.h"

@interface CityViewController : UIViewController
@property (nonatomic, strong) City *city;
@property (nonatomic, weak) UIButton *detailsButton;
-(instancetype) initWithCity:(City*)city;

@end
