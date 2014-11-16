//
//  RSCComponentViewController.m
//  RSCUIMaster
//
//  Created by rscdef@gmail.com on 14/11/15.
//  Copyright (c) 2014年 UIMaster. All rights reserved.
//

#import "RSCComponentController.h"
#import "RSCComponentTableViewCell.h"

@interface RSCComponentController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, weak) IBOutlet UITableView    *tableView;

@end

@implementation RSCComponentController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = RSCLocalizedSring(RSCSTR_COMPONENT);
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
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return 3;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    RSCComponentTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ComponentCell" forIndexPath:indexPath];
    if (indexPath.row == 0) {
        cell.titleLabel.text = RSCLocalizedSring(RSCSTR_INTRODUCTION);
    } else if (indexPath.row == 1) {
        cell.titleLabel.text = RSCLocalizedSring(RSCSTR_ACCOUNT);
    } else if (indexPath.row == 2) {
        cell.titleLabel.text = RSCLocalizedSring(RSCSTR_SETTINGS);
    }
    
    return cell;
}

@end
