//
//  SVT.h
//  Exercise 2
//
//  Created by Тимофей Савицкий on 7/5/16.
//  Copyright © 2016 Тимофей Савицкий. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum { paperback, hardcover, defaultType } bookOfType;

@interface SVT : NSObject {
@private
    NSString *_nameBook;
    int _yearBook;
    bookOfType _bookType;
}
    
- (NSString *)nameBook;
- (void)setNameBook:(NSString *)setNameBook;

- (int)yearBook;
- (void)setYearBook:(int)newYearBook;

- (bookOfType)bookType;
- (void)SetBookType:(bookOfType)newSetBookType;

- (instancetype)init;
- (instancetype)initWithBookValue:(NSString *)bookName yearBook:(int)bookYear bookType:(bookOfType)bookCoverType;

+ (instancetype)bookWithName:(NSString *)name yearBook:(int)year bookType:(bookOfType)newType;

- (NSString *)description;

- (void)dealloc;

@end
