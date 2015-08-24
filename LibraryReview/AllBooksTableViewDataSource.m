 //
//  AllBooksTableViewDataSource.m
//  LibraryReview
//
//  Created by DevMountain on 8/24/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "AllBooksTableViewDataSource.h"
#import "BookSwitchTableViewCell.h"

@implementation AllBooksTableViewDataSource


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    BookSwitchTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"bookCell"];
    
    //configure cell
    
    return cell;
}

@end
