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
    self.title = RSCLocalizedSring(RSCSTR_STRUCTURE);
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
    RSCStructureTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"StructureCell" forIndexPath:indexPath];
    if (indexPath.row == 0) {
        cell.titleLabel.text = RSCLocalizedSring(RSCSTR_TOP_TABS);
    } else if (indexPath.row == 1) {
        cell.titleLabel.text = RSCLocalizedSring(RSCSTR_BOTTOM_TABS);
    } else if (indexPath.row == 2) {
        cell.titleLabel.text = RSCLocalizedSring(RSCSTR_SLIDE_MENU);
    }
    
    return cell;
}

@end
