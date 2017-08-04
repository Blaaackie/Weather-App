//
//  DetailedViewController.m
//  Weather
//
//  Created by Tye Blackie on 2017-08-02.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "DetailedViewController.h"

@interface DetailedViewController ()

@end

@implementation DetailedViewController

-(instancetype) initWithCity:(City*)city{
    self = [super init];
    if (self) {
        _city = city;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
   
    UILabel *cityName = [[UILabel alloc]initWithFrame:CGRectMake(150, 150, 150, 30)];
    cityName.text = self.city.name;
    cityName.backgroundColor = [UIColor clearColor];
    cityName.textColor = [UIColor whiteColor];
    cityName.textAlignment = NSTextAlignmentLeft;
    [self.view addSubview:cityName];
    
    UILabel *temperature = [[UILabel alloc]initWithFrame:CGRectMake(80, 250, 300, 30)];
    temperature.text = [NSString stringWithFormat:@"Temperature - %dºC", self.city.temperature];
    temperature.backgroundColor = [UIColor clearColor];
    temperature.textColor = [UIColor whiteColor];
    temperature.textAlignment = NSTextAlignmentLeft;
    [self.view addSubview:temperature];
    
    UILabel *precipitaion = [[UILabel alloc]initWithFrame:CGRectMake(80, 300, 300, 30)];
    precipitaion.text = [NSString stringWithFormat:@"Chance of Precipitation - %d%%",self.city.precipitation];
    precipitaion.backgroundColor = [UIColor clearColor];
    precipitaion.textColor = [UIColor whiteColor];
    precipitaion.textAlignment = NSTextAlignmentLeft;
    [self.view addSubview:precipitaion];
    
    UILabel *humidity = [[UILabel alloc]initWithFrame:CGRectMake(80, 350, 300, 30)];
    humidity.text = [NSString stringWithFormat:@"Humidity - %d%%",self.city.humidity];
    humidity.backgroundColor = [UIColor clearColor];
    humidity.textColor = [UIColor whiteColor];
    humidity.textAlignment = NSTextAlignmentLeft;
    [self.view addSubview:humidity];
    
    UILabel *windSpeed = [[UILabel alloc]initWithFrame:CGRectMake(80, 400, 300, 30)];
    windSpeed.text = [NSString stringWithFormat:@"Wind Speed - %d Km/h",self.city.windSpeed];
    windSpeed.backgroundColor = [UIColor clearColor];
    windSpeed.textColor = [UIColor whiteColor];
    windSpeed.textAlignment = NSTextAlignmentLeft;
    [self.view addSubview:windSpeed];
    
    
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
