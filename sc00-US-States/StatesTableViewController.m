//
//  StatesTableViewController.m
//  sc00-US-States
//
//  Created by Entec Department on 11/1/17.
//  Copyright © 2017 cop2654.mdc.edu. All rights reserved.
//

#import "StatesTableViewController.h"
#import "States.h"
#import "StateTableViewCell.h"
#import "StateDetailViewController.h"

@interface StatesTableViewController ()
@property (strong, nonatomic) NSMutableArray* usStates;
@end

@implementation StatesTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    States *alabama = [[States alloc]init];
    alabama.name = @"Alabama";
    alabama.capital = @"Montgomery";
    alabama.motto = @"Audemus jura nosta defendere";
    alabama.population = 4833722;
    alabama.birdName = @"YellowHammer";
    alabama.birdImag = [UIImage imageNamed:@"yellowhammer"];
    alabama.flag = [UIImage imageNamed:@"Flags/Small/alabama-flag-small"];
    
    States *georgia = [[States alloc]init];
    georgia.name = @"Georgia";
    georgia.capital = @"Atlanta";
    georgia.motto = @"Wisdom, Justice, Moderation";
    georgia.birdName = @"Brown Thrasher";
    georgia.birdImag = [UIImage imageNamed:@"brownthrasher"];
    georgia.population = 9992167;
    georgia.flag = [UIImage imageNamed:@"Flags/Small/georgia-flag-small"];
    
    States *florida = [[States alloc]init];
    florida.name = @"Florida";
    florida.capital = @"Tallahasse";
    florida.motto = @"In God We Trust";
    florida.population = 20271272;
    florida.birdName = @"Mockingbird";
    florida.birdImag = [UIImage imageNamed:@"mockingbird"];
    florida.flag = [UIImage imageNamed:@"Flags/Small/florida-flag-small"];
    
    States *ohio = [[States alloc]init];
    ohio.name = @"Ohio";
    ohio.capital = @"Columbus";
    ohio.motto = @"With God, all things are possible";
    ohio.population = 11613423;
    ohio.birdName = @"Cardinal";
    ohio.birdImag = [UIImage imageNamed:@"cardinal"];
    ohio.flag = [UIImage imageNamed:@"Flags/Small/ohio-flag-small"];
    
    States *hawaii = [[States alloc]init];
    hawaii.name = @"Hawaii";
    hawaii.capital = @"Honolulu";
    hawaii.motto = @"Ua mau he ea o ka aina i ka pono";
    hawaii.population = 1431603;
    hawaii.birdName = @"Nene";
    hawaii.birdImag = [UIImage imageNamed:@"nene"];
    hawaii.flag = [UIImage imageNamed:@"Flags/Small/hawaii-flag-small"];
    
    States *ny = [[States alloc]init];
    ny.name = @"New York";
    ny.capital = @"Albany";
    ny.motto = @"Excelsior";
    ny.population = 19795791;
    ny.birdName = @"Bluebird";
    ny.birdImag = [UIImage imageNamed:@"bluebird"];
    ny.flag = [UIImage imageNamed:@"Flags/Small/new-york-flag-small"];
    
    States *nj = [[States alloc]init];
    nj.name = @"New Jersey";
    nj.capital = @"Trenton";
    nj.motto = @"Liberty and prosperity";
    nj.population = 8958013;
    nj.birdName = @"Eastern goldfinch";
    nj.birdImag = [UIImage imageNamed:@"easterngoldfinch"];
    nj.flag = [UIImage imageNamed:@"Flags/Small/new-jersey-flag-small"];
    
    States *alaska = [[States alloc]init];
    alaska.name = @"Alaska";
    alaska.capital = @"Junea";
    alaska.motto = @"North to the future";
    alaska.population = 738432;
    alaska.birdName = @"Willow ptarmigan";
    alaska.birdImag = [UIImage imageNamed:@"willowptarmigan"];
    alaska.flag = [UIImage imageNamed:@"Flags/Small/alaska-flag-small"];
    
    
    
    self.usStates = [NSMutableArray arrayWithObjects:alabama, georgia, florida,ohio, hawaii, ny,nj, alaska, nil];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.usStates count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString* cellIdentifier = @"stateInfoCellId";
    StateTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    // populate the cell with data
    States *item = [self.usStates objectAtIndex:indexPath.row];
    
    cell.stateName.text = item.name;
    cell.stateMoto.text = item.motto;
    cell.flagImageView.image = item.flag;
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([[segue identifier] isEqualToString:@"showDetails"]){
        StateDetailViewController *detailVC = [segue destinationViewController];
        NSIndexPath *myIndexPath = [self.tableView indexPathForSelectedRow];
        States * item = [self.usStates objectAtIndex:myIndexPath.row];
        detailVC.myState = item;
        
    }
}


@end
