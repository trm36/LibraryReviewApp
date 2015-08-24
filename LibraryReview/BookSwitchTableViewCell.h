//
//  BookSwitchTableViewCell.h
//  LibraryReview
//
//  Created by DevMountain on 8/24/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol BookSwitchTableViewCellSwitchDelegate;

@interface BookSwitchTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *authorLabel;
@property (weak, nonatomic) IBOutlet UISwitch *hasReadSwitch;
@property (weak, nonatomic) id<BookSwitchTableViewCellSwitchDelegate> delegate;

@end

@protocol BookSwitchTableViewCellSwitchDelegate <NSObject>

- (void)switchCellSwitchToggled:(BookSwitchTableViewCell *)cellWithSwitchTapped;

@end
