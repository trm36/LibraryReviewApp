//
//  ViewController.m
//  LibraryReview
//
//  Created by DevMountain on 8/24/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "AllBooksListViewController.h"
#import "BookController.h"
#import "BookDetailViewController.h"

@interface AllBooksListViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation AllBooksListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self.tableView reloadData];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"bookCellTapped"]) {
        UITableViewCell *cellTapped = sender;
        
        NSIndexPath *indexPath = [self.tableView indexPathForCell:cellTapped];
        
        Book *book = [BookController sharedInstance].books[indexPath.row];
        
        BookDetailViewController *dvc = segue.destinationViewController;
        
        dvc.book = book;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
