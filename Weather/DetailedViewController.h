//
//  DetailedViewController.h
//  Weather
//
//  Created by Tye Blackie on 2017-08-02.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "City.h"

@interface DetailedViewController : UIViewController
@property (nonatomic, strong) City *city;

-(instancetype) initWithCity:(City*)city;

@end
