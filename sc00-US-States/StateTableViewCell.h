//
//  StateTableViewCell.h
//  sc00-US-States
//
//  Created by Entec Department on 11/1/17.
//  Copyright © 2017 cop2654.mdc.edu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StateTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *flagImageView;
@property (weak, nonatomic) IBOutlet UILabel *stateName;
@property (weak, nonatomic) IBOutlet UILabel *stateMoto;

@end
