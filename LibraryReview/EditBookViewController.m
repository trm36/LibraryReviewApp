//
//  EditBookViewController.m
//  LibraryReview
//
//  Created by DevMountain on 8/24/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "EditBookViewController.h"
#import "BookController.h"
#import "Stack.h"

@interface EditBookViewController ()

@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextField *authorTextField;
@property (weak, nonatomic) IBOutlet UITextField *summaryTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *ratingSegmentedControl;
@property (weak, nonatomic) IBOutlet UISwitch *hasReadSwitch;
@property (weak, nonatomic) IBOutlet UITextView *reviewTextView;

@end

@implementation EditBookViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)cancelButtonTapped:(UIBarButtonItem *)sender {
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}


- (IBAction)doneButtonTapped:(UIBarButtonItem *)sender {
    
    if (!self.book) {
        self.book = [[BookController sharedInstance] createBook];
    }
    
    self.book.title = self.titleTextField.text;
    self.book.author = self.authorTextField.text;
    self.book.summary = self.summaryTextField.text;
    self.book.rating = [NSNumber numberWithInteger:self.ratingSegmentedControl.selectedSegmentIndex];
    if (self.hasReadSwitch.on) {
        self.book.hasRead = @1;
    } else {
        self.book.hasRead = @0;
    }
    
    [[Stack sharedInstance].managedObjectContext save:nil];
    
    [self.navigationController dismissViewControllerAnimated:YES
                             completion:nil];
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
