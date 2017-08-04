//
//  City.h
//  Weather
//
//  Created by Tye Blackie on 2017-08-02.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject

@property (nonatomic, assign) int temperature;
@property (nonatomic, assign) int precipitation;
@property (nonatomic, assign) int humidity;
@property (nonatomic, assign) int windSpeed;
@property (nonatomic, strong) NSString* name;
@property (nonatomic, strong) UIImage* photo;

-(instancetype) initWithName:(NSString*)name photo:(UIImage*)photo temperature:(int)temperature precipitaion:(int)precipitaion humidity:(int)humidity windSpeed:(int)windSpeed;



@end
