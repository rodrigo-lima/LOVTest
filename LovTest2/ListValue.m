//
//  ListValue.m
//  LovTest2
//
//  Created by Rodrigo Lima on 1/16/13.
//  Copyright (c) 2013 Rodrigo Lima. All rights reserved.
//

#import "ListValue.h"
#import "ListOfValues.h"


@implementation ListValue

@dynamic action;
@dynamic children;
@dynamic displayLabel;
@dynamic groups;
@dynamic links;
@dynamic lovID;
@dynamic position;
@dynamic storeValue;
@dynamic parentList;

+ (RKObjectMapping *)baseMapping
{
    RKManagedObjectStore *store = [RKManagedObjectStore defaultStore];
    NSEntityDescription *entityDesc = [[store.managedObjectModel entitiesByName] objectForKey:NSStringFromClass(self.class)];
    // not yet initialized let's just wait until we have the entity registered
    if (!entityDesc) {
        return nil;
    }
    RKEntityMapping *mapping = [RKEntityMapping mappingForEntityForName:NSStringFromClass(self.class)
                                                   inManagedObjectStore:store];
    
    [mapping addAttributeMappingsFromDictionary:@{
     @"attributes.displayLabel": @"displayLabel",
     @"attributes.position": @"position",
     @"attributes.storeValue": @"storeValue",
     @"lovID": @"lovID"
     }];
    
//    [mapping setSourceToDestinationKeyTransformationBlock:^NSString *(RKObjectMapping *mapping, NSString *sourceKey)
//     {
//        if ([sourceKey isEqualToString:@"lovID"])
//        {
//            return @"lovID";
//        };
//        return sourceKey;
//    }];
//
    mapping.identificationAttributes = @[@"lovID"]; // @[@"position", @"storeValue"];
    return mapping;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"ListValue [%@] - label[%@] - position[%@] - storeValue[%@]",
            self.lovID, self.displayLabel, self.position, self.storeValue];
}
@end
