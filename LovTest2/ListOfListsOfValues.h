//
//  ListOfListsOfValues.h
//  LovTest
//
//  Created by Rodrigo Lima on 1/9/13.
//  Copyright (c) 2013 Oracle Corp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ListOfListsOfValues : NSObject

@property (nonatomic,strong) NSArray *listsOfValues;
+ (void)registerObjectMapping;

@end
