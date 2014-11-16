//
//  FirstViewController.m
//  RSCUIMaster
//
//  Created by rscdef@gmail.com on 14/11/15.
//  Copyright (c) 2014年 UIMaster. All rights reserved.
//

#import "RSCCategoryController.h"
#import "RSCCategoryTableViewCell.h"

@interface RSCCategoryController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, weak) IBOutlet UITableView    *tableView;

@end

@implementation RSCCategoryController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    NSString *path = [[NSBundle mainBundle] pathForResource:@"Localizable" ofType:@"strings"];
//    NSString *path = [[NSBundle mainBundle] pathForResource:@"first" ofType:@"pdf"];
//    NSLog(@"path:%@",path);
    NSLog(@"%@",[NSLocale preferredLanguages]);
    self.title = RSCLocalizedSring(RSCSTR_CATEGORY);
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
    return 4;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
     RSCCategoryTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CategoryCell" forIndexPath:indexPath];
     if (indexPath.row == 0) {
         cell.titleLabel.text = @"Reading";
     } else if (indexPath.row == 1) {
         cell.titleLabel.text = @"E-Commerce";
     } else if (indexPath.row == 2) {
         cell.titleLabel.text = @"Communication";
     } else if (indexPath.row == 3) {
         cell.titleLabel.text = @"Utilities";
     }
     
     return cell;
}

@end
