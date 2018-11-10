//
//  ViewController.m
//  TestANE
//
//  Created by Koan-Sin Tan on 11/7/18.
//  Copyright © 2018 Koan-Sin Tan. All rights reserved.
//

#import "ViewController.h"

@interface _ANEDeviceInfo : NSObject
+ (id)bootArgs;
+ (id)buildVersion;
+ (bool)hasANE;
+ (bool)isInternalBuild;
+ (bool)precompiledModelChecksDisabled;
@end

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    NSBundle *aneBundle = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/AppleNeuralEngine.framework"];
    BOOL success = [aneBundle load];
    NSLog(@"load results: %d", success);

    Class _ANEDeviceInfo = NSClassFromString(@"_ANEDeviceInfo");

    self.aneBundleLoadedLabel.text = [NSString stringWithFormat:@"%s", success ? "yes" : "no"];
    self.buildVersionLabel.text = [_ANEDeviceInfo buildVersion];
    self.hasANELabel.text = [NSString stringWithFormat:@"%s", [_ANEDeviceInfo hasANE] ? "yes" : "no"];
    self.isInternalBuildLabel.text = [NSString stringWithFormat:@"%s", [_ANEDeviceInfo isInternalBuild] ? "yes" : "no"];
    self.precompiledModelCheckDisabledLabel.text = [NSString stringWithFormat:@"%s", [_ANEDeviceInfo precompiledModelChecksDisabled] ? "yes" : "no"];
}


@end
