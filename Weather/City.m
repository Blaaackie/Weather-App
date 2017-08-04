//
//  City.m
//  Weather
//
//  Created by Tye Blackie on 2017-08-02.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "City.h"

@implementation City

-(instancetype) initWithName:(NSString*)name photo:(UIImage*)photo temperature:(int)temperature precipitaion:(int)precipitaion humidity:(int)humidity windSpeed:(int)windSpeed{
    self = [super init];
    if (self) {
        _name = name;
        _photo = photo;
        _temperature = temperature;
        _precipitation = precipitaion;
        _humidity = humidity;
        _windSpeed = windSpeed;
    }
    return self;
}

@end
