//
//  SecondViewController.m
//  RSCUIMaster
//
//  Created by rscdef@gmail.com on 14/11/15.
//  Copyright (c) 2014年 UIMaster. All rights reserved.
//

#import "RSCStructureController.h"
#import "RSCStructureTableViewCell.h"

@interface RSCStructureController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, weak) IBOutlet UITableView    *tableView;

@end

@implementation RSCStructureController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"Structure";
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
    return 2;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    RSCStructureTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"StructureCell" forIndexPath:indexPath];
    if (indexPath.row == 0) {
        cell.titleLabel.text = @"Tab";
    } else if (indexPath.row == 1) {
        cell.titleLabel.text = @"Left-Middle-Right";
    }
    
    return cell;
}

@end
