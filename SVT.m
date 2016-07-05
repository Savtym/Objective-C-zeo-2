//
//  SVT.m
//  Exercise 2
//
//  Created by Тимофей Савицкий on 7/5/16.
//  Copyright © 2016 Тимофей Савицкий. All rights reserved.
//

#import "SVT.h"

@implementation SVT

- (instancetype)init {
    self = [super init];
    if (self) {
        _nameBook = nil;
        _yearBook = 0;
        _bookType = defaultType;
    }
    return self;
}

- (instancetype)initWithBookValue:(NSString *)bookName yearBook:(int)bookYear bookType:(bookOfType)bookCoverType {
    self = [super init];
    if (self) {
        _nameBook = bookName;
        _yearBook = bookYear;
        _bookType = bookCoverType;
    }
    return self;
}

+ (instancetype)bookWithName:(NSString *)name yearBook:(int)year bookType:(bookOfType)newType {
    return [[[self alloc] initWithBookValue:name yearBook:year bookType:newType] autorelease];
}

- (NSString *)nameBook {
    return _nameBook;
}

- (void)setNameBook:(NSString *)newNameBook {
    if (newNameBook != _nameBook) {
        [newNameBook retain];
        [_nameBook release];
        _nameBook = newNameBook;
    }
}

- (int)yearBook {
    return _yearBook;
}

- (void)setYearBook:(int)newYearBook {
    if (newYearBook != _yearBook) {
        _yearBook = newYearBook;
    }
}

- (bookOfType)bookType {
    return _bookType;
}

- (void)SetBookType:(bookOfType)newSetBookType {
    if (newSetBookType != _bookType) {
        _bookType = newSetBookType;
    }
}

- (NSString *)description {
    NSString *str = [[[NSString alloc] init] autorelease];
    switch (_bookType) {
        case paperback:
            str = @"Paperback";
            break;
        case hardcover:
            str = @"Hardcover";
            break;
        default:
            str = @"Undefined";
            break;
    }
    return [NSString stringWithFormat:@"\n\nName: %@;\nYear: %d;\nType of Book: %@;\n\n",_nameBook,_yearBook,str];
}

- (void)dealloc {
    [_nameBook release];
    _nameBook = nil;
    [super dealloc];
}

@end
