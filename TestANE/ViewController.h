//
//  ViewController.h
//  TestANE
//
//  Created by Koan-Sin Tan on 11/7/18.
//  Copyright © 2018 Koan-Sin Tan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *aneBundleLoadedLabel;
@property (weak, nonatomic) IBOutlet UILabel *buildVersionLabel;
@property (weak, nonatomic) IBOutlet UILabel *hasANELabel;
@property (weak, nonatomic) IBOutlet UILabel *isInternalBuildLabel;
@property (weak, nonatomic) IBOutlet UILabel *precompiledModelCheckDisabledLabel;

@end

