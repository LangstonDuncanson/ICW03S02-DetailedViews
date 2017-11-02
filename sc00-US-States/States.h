//
//  States.h
//  sc00-US-States
//
//  Created by Entec Department on 11/1/17.
//  Copyright © 2017 cop2654.mdc.edu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>  // need for UIImage

@interface States : NSObject
@property (strong, nonatomic) NSString* name;
@property (strong, nonatomic) NSString* capital;
@property (strong, nonatomic) NSString* motto;
@property (strong, nonatomic) NSString* birdName;
@property (nonatomic) int population;
@property (strong, nonatomic) UIImage* birdImag;
@property (strong, nonatomic) UIImage* flag;
@end
