//
//  BookController.h
//  LibraryReview
//
//  Created by DevMountain on 8/24/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"

@interface BookController : NSObject

+ (BookController *)sharedInstance;

- (Book *)createBook;
@property (strong, nonatomic) NSArray *books;
//Update = Pointers and Save;
- (void)deleteBook:(Book *)bookToDelete;

@end
