//
//  ListValue.h
//  LovTest2
//
//  Created by Rodrigo Lima on 1/16/13.
//  Copyright (c) 2013 Rodrigo Lima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import <RestKit/RestKit.h>

@class ListOfValues;

@interface ListValue : NSManagedObject

@property (nonatomic, retain) NSString * action;
@property (nonatomic, retain) id children;
@property (nonatomic, retain) NSString * displayLabel;
@property (nonatomic, retain) id groups;
@property (nonatomic, retain) id links;
@property (nonatomic, retain) NSString * lovID;
@property (nonatomic, retain) NSNumber * position;
@property (nonatomic, retain) NSString * storeValue;
@property (nonatomic, retain) ListOfValues *parentList;

+ (RKEntityMapping *)baseMapping;

@end
