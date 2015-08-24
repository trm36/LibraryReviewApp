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

@implementation AllBooksTableViewDataSource


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [BookController sharedInstance].books.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    BookSwitchTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"bookCell"];
    
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

@end
