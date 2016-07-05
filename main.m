//
//  main.m
//  Exercise 2
//
//  Created by Тимофей Савицкий on 7/5/16.
//  Copyright © 2016 Тимофей Савицкий. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "SVT.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        SVT *book1 = [[[SVT alloc] init] autorelease];
        
        [book1 setNameBook:@"master and margarita"];
        [book1 setYearBook:1927];
        [book1 SetBookType:paperback];
        
        NSLog(@"%@",book1);
        
        
        SVT *book2 = [[[SVT alloc] initWithBookValue:@"Idiot" yearBook:1897 bookType:hardcover] autorelease];
        
        NSLog(@"%@",book2);
        
        SVT *book3 = [SVT bookWithName: @"Romeo and Juliet" yearBook:1689 bookType: defaultType];
        
        NSLog(@"%@",book3);
        [book3 setYearBook:1785];
        [book3 SetBookType:hardcover];
        NSLog(@"%@",book3);
    }
    return 0;
}
