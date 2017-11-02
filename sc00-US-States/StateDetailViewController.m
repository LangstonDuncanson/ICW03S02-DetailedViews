//
//  StateDetailViewController.m
//  sc00-US-States
//
//  Created by Andres Gonzalez on 11/1/17.
//  Copyright © 2017 cop2654.mdc.edu. All rights reserved.
//

#import "StateDetailViewController.h"
#import "States.h"

@interface StateDetailViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *stateFlagImage;
@property (weak, nonatomic) IBOutlet UILabel *Statenamelbl;
@property (weak, nonatomic) IBOutlet UILabel *stateDetailCapital;
@property (weak, nonatomic) IBOutlet UILabel *stateDetailPopulation;
@property (weak, nonatomic) IBOutlet UILabel *statePopulation;
@property (weak, nonatomic) IBOutlet UILabel *stateBird;
@property (weak, nonatomic) IBOutlet UIImageView *stateBirdImag;

@end

@implementation StateDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.stateDetailCapital.text =[NSString stringWithFormat:@"State capital: %@" ,self.myState.capital];
    self.stateFlagImage.image = self.myState.flag;
    self.Statenamelbl.text = [NSString stringWithFormat:@"State Name: %@" ,self.myState.name];
    self.stateDetailPopulation.text = self.myState.motto;
    self.statePopulation.text = [NSString stringWithFormat:@" State population: %d" ,self.myState.population];
    self.stateBird.text = [NSString stringWithFormat:@"State Bird: %@" ,self.myState.birdName];
    self.stateBirdImag.image = self.myState.birdImag;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
