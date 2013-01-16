//
//  ListOfListsOfValues.m
//  LovTest
//
//  Created by Rodrigo Lima on 1/9/13.
//  Copyright (c) 2013 Oracle Corp. All rights reserved.
//

#import <RestKit/RestKit.h>
#import "ListOfListsOfValues.h"
#import "ListOfValues.h"
#import "ListValue.h"

@implementation ListOfListsOfValues

@synthesize listsOfValues = _listsOfValues;

+ (void)registerObjectMapping
{
    RKEntityMapping *valueMap = [ListValue baseMapping];
    RKEntityMapping *listMap = [ListOfValues baseMapping];
    
    if (valueMap == nil || listMap == nil) { // perhaps we don't have a fully loaded model at this point?
        return;
    }
    
    //    [listMap mapKeyPath:@"items" toRelationship:@"values" withMapping:valueMap];
    [listMap addPropertyMapping:[RKRelationshipMapping relationshipMappingFromKeyPath:@"items"
                                                                            toKeyPath:@"values"
                                                                          withMapping:valueMap]];
    //    [valueMap hasOne:@"parentList" withMapping:listMap];
    [valueMap addPropertyMapping:[RKRelationshipMapping relationshipMappingFromKeyPath:@"parentList"
                                                                             toKeyPath:@"parentList"
                                                                           withMapping:listMap]];
    
    // -----------------------
    RKObjectMapping *catalogMap = [RKObjectMapping mappingForClass:self];
    //    [catalogMap mapKeyPath:@"listOfValues" toRelationship:@"listsOfValues" withMapping:listMap];
    [catalogMap addPropertyMapping:[RKRelationshipMapping relationshipMappingFromKeyPath:@"listOfValues"
                                                                               toKeyPath:@"listsOfValues"
                                                                             withMapping:listMap]];
    /////////////
    RKResponseDescriptor *responseDescriptorWithKeyPath =
    [RKResponseDescriptor responseDescriptorWithMapping:catalogMap
                                            pathPattern:@"LOVTest/master/lovs.json"
                                                keyPath:nil
                                            statusCodes:RKStatusCodeIndexSetForClass(RKStatusCodeClassSuccessful)];
    [[RKObjectManager sharedManager] addResponseDescriptor:responseDescriptorWithKeyPath];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"ListOfListsOfValues: [%@]", self.listsOfValues];
}

@end
