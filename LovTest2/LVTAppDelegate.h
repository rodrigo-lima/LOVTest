//
//  LVTAppDelegate.h
//  LovTest2
//
//  Created by Rodrigo Lima on 1/16/13.
//  Copyright (c) 2013 Rodrigo Lima. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LVTAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

//@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
//@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
//@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
