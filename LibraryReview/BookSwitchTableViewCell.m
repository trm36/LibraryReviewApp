//
//  BookSwitchTableViewCell.m
//  LibraryReview
//
//  Created by DevMountain on 8/24/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "BookSwitchTableViewCell.h"

@implementation BookSwitchTableViewCell

- (void)awakeFromNib {
    // Initialization code
}
- (IBAction)switchToggled:(UISwitch *)sender {
    [self.delegate switchCellSwitchToggled:self];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
