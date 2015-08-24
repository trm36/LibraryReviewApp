//
//  BookDetailViewController.m
//  LibraryReview
//
//  Created by DevMountain on 8/24/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "BookDetailViewController.h"

@interface BookDetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *authorLabel;
@property (weak, nonatomic) IBOutlet UILabel *summaryLabel;
@property (weak, nonatomic) IBOutlet UILabel *ratingLabel;
@property (weak, nonatomic) IBOutlet UISwitch *hasReadSwitch;
@property (weak, nonatomic) IBOutlet UITextView *reviewTextView;

@end

@implementation BookDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.titleLabel.text = self.book.title;
    self.authorLabel.text = self.book.author;
    self.summaryLabel.text = self.book.summary;
    self.ratingLabel.text = [NSString stringWithFormat:@"Rating: %@", self.book.rating];
    if ([self.book.hasRead isEqualToNumber:@0]) {
        self.hasReadSwitch.on = NO;
    } else {
        self.hasReadSwitch.on = YES;
    }
    self.hasReadSwitch.enabled = NO;
    
    self.reviewTextView.text = self.book.review;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
