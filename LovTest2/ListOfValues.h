//
//  ListOfValues.h
//  LovTest2
//
//  Created by Rodrigo Lima on 1/16/13.
//  Copyright (c) 2013 Rodrigo Lima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import <RestKit/RestKit.h>

@class ListValue;

@interface ListOfValues : NSManagedObject

@property (nonatomic, retain) NSString * action;
@property (nonatomic, retain) id children;
@property (nonatomic, retain) id groups;
@property (nonatomic, retain) NSString * linkRelation;
@property (nonatomic, retain) id links;
@property (nonatomic, retain) NSString * linkURI;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * resourceName;
@property (nonatomic, retain) NSSet *values;

+ (RKEntityMapping *)baseMapping;

@end

@interface ListOfValues (CoreDataGeneratedAccessors)

- (void)addValuesObject:(ListValue *)value;
- (void)removeValuesObject:(ListValue *)value;
- (void)addValues:(NSSet *)values;
- (void)removeValues:(NSSet *)values;

@end
