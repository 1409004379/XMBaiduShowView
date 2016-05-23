//
//  AppDelegate.h
//  百度地图实现定位和导航
//
//  Created by Kenfor-YF on 16/5/23.
//  Copyright © 2016年 Kenfor-YF. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <BaiduMapAPI_Base/BMKMapManager.h>
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) BMKMapManager *mapManager;


@end

