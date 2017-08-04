//
//  LHWAppDelegate.m
//  Weather
//
//  Created by Steven Masuch on 2014-07-30.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LHWAppDelegate.h"

@implementation LHWAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    City *vancouver = [[City alloc] initWithName:@"Vancouver"
                                           photo:[UIImage imageNamed:@"cloudy-night.png"]
                                     temperature:23
                                    precipitaion:89
                                        humidity:67
                                       windSpeed:10];
    
    City *calgary = [[City alloc] initWithName:@"Calgary"
                                         photo:[UIImage imageNamed:@"rain.png"]
                                   temperature:18
                                  precipitaion:0
                                      humidity:55
                                     windSpeed:17];
    
    City *losAngeles = [[City alloc] initWithName:@"Los Angeles"
                                            photo:[UIImage imageNamed:@"fog.png"]
                                      temperature:31
                                     precipitaion:15
                                         humidity:48
                                        windSpeed:17];
    
    City *newYorkCity = [[City alloc] initWithName:@"New York City"
                                             photo:[UIImage imageNamed:@"sleet.png"]
                                       temperature:31
                                      precipitaion:44
                                          humidity:82
                                         windSpeed:6];
    
    City *montreal = [[City alloc] initWithName:@"Montreal"
                                          photo:[UIImage imageNamed:@"cloudy.png"]
                                    temperature:29
                                   precipitaion:15
                                       humidity:52
                                      windSpeed:13];
    
    
    CityViewController *vancouverViewController = [[CityViewController alloc] initWithCity:vancouver];
    CityViewController *calgaryViewController = [[CityViewController alloc] initWithCity:calgary];
    CityViewController *losAngelesViewController = [[CityViewController alloc] initWithCity:losAngeles];
    CityViewController *newYorkCityViewController = [[CityViewController alloc] initWithCity:newYorkCity];
    CityViewController *montrealViewController = [[CityViewController alloc] initWithCity:montreal];

    
    
    UINavigationController *vancouverNavigationController = [[UINavigationController alloc] initWithRootViewController:vancouverViewController];
    vancouverNavigationController.title = @"VANCOUVER";
    
    UINavigationController *calgaryNavigationController = [[UINavigationController alloc] initWithRootViewController:calgaryViewController];
    calgaryNavigationController.title = @"CALGARY";
    
    UINavigationController *losAngelesNavigationController = [[UINavigationController alloc] initWithRootViewController:losAngelesViewController];
    losAngelesNavigationController.title = @"LOS ANGELES";
    
    UINavigationController *newYorkCityNavigationController = [[UINavigationController alloc] initWithRootViewController:newYorkCityViewController];
    newYorkCityNavigationController.title = @"NEW YORK CITY";
    
    UINavigationController *montrealNavigationController = [[UINavigationController alloc] initWithRootViewController:montrealViewController];
    montrealNavigationController.title = @"MONTREAL";
    
    
    
    UITabBarController *cityTabBar = [[UITabBarController alloc] init];
    self.window.rootViewController = cityTabBar;
    
    NSMutableArray *tabViewControllers = [[NSMutableArray alloc] init];
    [tabViewControllers addObject:vancouverNavigationController];
    [tabViewControllers addObject:calgaryNavigationController];
    [tabViewControllers addObject:losAngelesNavigationController];
    [tabViewControllers addObject:newYorkCityNavigationController];
    [tabViewControllers addObject:montrealNavigationController];
    
    cityTabBar.viewControllers = tabViewControllers;
    
    
//   // can't set this until after its added to the tab bar
//    vancouverViewController.tabBarItem =
//    [[UITabBarItem alloc] initWithTitle:@"vancouverViewController"
//                                  image:[UIImage imageNamed:@"view1"]
//                                    tag:1];
//    
//    calgaryViewController.tabBarItem =
//    [[UITabBarItem alloc] initWithTitle:@"calgaryViewController"
//                                  image:[UIImage imageNamed:@"view2"]
//                                    tag:2];
//    
//    losAngelesViewController.tabBarItem =
//    [[UITabBarItem alloc] initWithTitle:@"losAngelesViewController"
//                                  image:[UIImage imageNamed:@"view3"]
//                                    tag:3];
//    
//    newYorkCityViewController.tabBarItem =
//    [[UITabBarItem alloc] initWithTitle:@"newYorkCityViewController"
//                                  image:[UIImage imageNamed:@"view4"]
//                                    tag:4];
//    
//    montrealViewController.tabBarItem =
//    [[UITabBarItem alloc] initWithTitle:@"montrealViewController"
//                                  image:[UIImage imageNamed:@"view5"]
//                                    tag:5];
    
    
    // Your code goes here
    // Don't forget to assign the window a rootViewController
    
    [self.window makeKeyAndVisible];
    return YES;
}

@end
