//
//  OfflineLayerViewController.m
//  Mapbox Example
//
//  Copyright (c) 2014 Mapbox, Inc. All rights reserved.
//

#import "OfflineLayerViewController.h"

#import "Mapbox.h"

@implementation OfflineLayerViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    RMMBTilesSource *offlineSource = [[RMMBTilesSource alloc] initWithTileSetResource:@"control-room-0.2.0" ofType:@"mbtiles"];

    RMMapView *mapView = [[RMMapView alloc] initWithFrame:self.view.bounds andTilesource:offlineSource];
    
    mapView.zoom = 2;
    
    mapView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;

    mapView.adjustTilesForRetinaDisplay = YES; // these tiles aren't designed specifically for retina, so make them legible
    
    [self.view addSubview:mapView];
}

@end