//
//  ViewController.m
//  百度地图实现定位和导航
//
//  Created by Kenfor-YF on 16/5/23.
//  Copyright © 2016年 Kenfor-YF. All rights reserved.
//

#import "ViewController.h"
#import <BaiduMapAPI_Map/BMKMapView.h>
#import <BaiduMapAPI_Map/BMKPointAnnotation.h>

#import <BaiduMapAPI_Map/BMKPinAnnotationView.h>
@interface ViewController ()<BMKMapViewDelegate>
@property(nonatomic,strong)BMKMapView *mapView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    BMKMapView *mapView = [[BMKMapView alloc]initWithFrame:self.view.bounds];
    self.view = mapView;
    self.mapView = mapView;
}
-(void)viewDidAppear:(BOOL)animated
{
    BMKPointAnnotation *annotation = [[BMKPointAnnotation alloc]init];
    CLLocationCoordinate2D coor;
    coor.latitude = 300.4;
    coor.longitude = 116.404;
    annotation.coordinate = coor;
    annotation.title = @"首都";
    
    [_mapView addAnnotation:annotation];
}
-(BMKAnnotationView *)mapView:(BMKMapView *)mapView viewForAnnotation:(id<BMKAnnotation>)annotation
{
    if ([annotation isKindOfClass:[BMKPointAnnotation class]]) {
        BMKPinAnnotationView *newAnnotationView = [[BMKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"myAnnotation"];
        newAnnotationView.pinColor = BMKPinAnnotationColorPurple;
        newAnnotationView.animatesDrop = YES;// 设置该标注点动画显示
        return newAnnotationView;
    }
    return nil;
}

@end
