//
//  Book.h
//  LibraryReview
//
//  Created by DevMountain on 8/24/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Book : NSManagedObject

@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSString * author;
@property (nonatomic, retain) NSString * summary;
@property (nonatomic, retain) NSNumber * rating;
@property (nonatomic, retain) NSData * coverImage;
@property (nonatomic, retain) NSNumber * hasRead;
@property (nonatomic, retain) NSNumber * isReading;
@property (nonatomic, retain) NSString * review;

@end
