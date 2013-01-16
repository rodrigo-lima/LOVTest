//
//  ListOfValues.m
//  LovTest2
//
//  Created by Rodrigo Lima on 1/16/13.
//  Copyright (c) 2013 Rodrigo Lima. All rights reserved.
//

#import "ListOfValues.h"
#import "ListValue.h"


@implementation ListOfValues

@dynamic action;
@dynamic children;
@dynamic groups;
@dynamic linkRelation;
@dynamic links;
@dynamic linkURI;
@dynamic name;
@dynamic resourceName;
@dynamic values;

+ (RKEntityMapping *)baseMapping
{
    RKManagedObjectStore *store = [RKManagedObjectStore defaultStore];
    NSEntityDescription *entityDesc = [[store.managedObjectModel entitiesByName] objectForKey:NSStringFromClass(self.class)];
    // not yet initialized let's just wait until we have the entity registered
    if (!entityDesc) {
        return nil;
    }
    RKEntityMapping *mapping = [RKEntityMapping mappingForEntityForName:NSStringFromClass(self.class)
                                                   inManagedObjectStore:store];
    
    //    RKObjectMapping *mapping = [RKObjectMapping mappingForClass:self.class];
    [mapping addAttributeMappingsFromDictionary:@{
     @"listHeader.name": @"name",
     @"listHeader.links.self.href": @"linkURI",
     @"listHeader.links.self.rel": @"linkRelation",
     }];
    mapping.identificationAttributes = @[@"name"];
    return mapping;
}

//- (NSString *)description
//{
//    // RODRIGO -- note that if you change 'self.values.class' -> 'self.values' the App crashes with infinite loop
//    
//    return [NSString stringWithFormat:@"ListOfValues [%@] - uri[%@] - relation[%@] - values[%@]",
//            self.name, self.linkURI, self.linkRelation, self.values.class];
//}
//

@end
