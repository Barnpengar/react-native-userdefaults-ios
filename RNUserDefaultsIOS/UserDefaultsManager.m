//
//  StandardUserDefaultsManager.m
//  RNStandardUserDefaultsIOS
//
//  Created by Dave Sibiski on 5/15/15.
//  Copyright (c) 2015 Dave Sibiski. All rights reserved.
//

#import "UserDefaultsManager.h"

@implementation UserDefaultsManager

+ (void)setObject:(id)object forKey:(NSString *)key {
    
    return [[[NSUserDefaults alloc] initWithSuiteName:@"group.gimi.dev"] setObject:object forKey:key];
}

+ (void)setBool:(bool)value forKey:(NSString *)key {
    return [[[NSUserDefaults alloc] initWithSuiteName:@"group.gimi.dev"] setBool:value forKey:key];
}

+ (void)removeObjectForKey:(NSString *)key {
    return [[[NSUserDefaults alloc] initWithSuiteName:@"group.gimi.dev"] removeObjectForKey:key];
}

+ (NSArray *)arrayForKey:(NSString *)key {
    return [[[NSUserDefaults alloc] initWithSuiteName:@"group.gimi.dev"] arrayForKey:key];
}

+ (NSString *)stringForKey:(NSString *)key {
    return [[[NSUserDefaults alloc] initWithSuiteName:@"group.gimi.dev"] stringForKey:key];
}

+ (id)objectForKey:(NSString *)key {
    return [[[NSUserDefaults alloc] initWithSuiteName:@"group.gimi.dev"] objectForKey:key];
}

+ (bool)boolForKey:(NSString *)key {
    return [[[NSUserDefaults alloc] initWithSuiteName:@"group.gimi.dev"] boolForKey:key];
}

+ (NSArray *)getAllKeys:(NSString *)key {
    return [[[[NSUserDefaults alloc] initWithSuiteName:@"group.gimi.dev"] dictionaryRepresentation] allKeys];
}

@end
