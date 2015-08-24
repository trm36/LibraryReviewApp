 //
//  AllBooksTableViewDataSource.m
//  LibraryReview
//
//  Created by DevMountain on 8/24/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "AllBooksTableViewDataSource.h"
#import "BookSwitchTableViewCell.h"
#import "BookController.h"
#import "Stack.h"

@interface AllBooksTableViewDataSource() <BookSwitchTableViewCellSwitchDelegate>

@end

@implementation AllBooksTableViewDataSource


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    self.tableView = tableView;
    return [BookController sharedInstance].books.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    BookSwitchTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"bookCell"];
    cell.delegate = self;
    
    Book *book = [BookController sharedInstance].books[indexPath.row];
    
    cell.titleLabel.text = book.title;
    cell.authorLabel.text = book.author;
    if ([book.hasRead isEqualToNumber:@1]) {
        cell.hasReadSwitch.on = YES;
    } else {
        cell.hasReadSwitch.on = NO;
    }
    
    return cell;
}

- (void)switchCellSwitchToggled:(BookSwitchTableViewCell *)cellWithSwitchTapped {
    NSIndexPath *indexPath = [self.tableView indexPathForCell:cellWithSwitchTapped];
    
    Book *book = [BookController sharedInstance].books[indexPath.row];
    
    if (cellWithSwitchTapped.hasReadSwitch.on) {
        book.hasRead = @1;
    } else {
        book.hasRead = @0;
    }
    
    [[Stack sharedInstance].managedObjectContext save:nil];
}

@end
