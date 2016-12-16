//
//  StandardUserDefaultsManager.m
//  RNStandardUserDefaultsIOS
//
//  Created by Dave Sibiski on 5/15/15.
//  Copyright (c) 2015 Dave Sibiski. All rights reserved.
//

#import "UserDefaultsManager.h"

@implementation UserDefaultsManager

+ (NSUserDefaults *) gimiGroupDefaults {
    return [[NSUserDefaults alloc] initWithSuiteName:@"group.gimi.dev"];
}

+ (void)setObject:(id)object forKey:(NSString *)key {
    
    [[UserDefaultsManager gimiGroupDefaults] setObject:object forKey:key];
}

+ (void)setBool:(bool)value forKey:(NSString *)key {
    
    [[UserDefaultsManager gimiGroupDefaults] setBool:value forKey:key];
}

+ (void)removeObjectForKey:(NSString *)key {
    
    [[UserDefaultsManager gimiGroupDefaults] removeObjectForKey:key];
}

+ (NSArray *)arrayForKey:(NSString *)key {
    
    return [[UserDefaultsManager gimiGroupDefaults] arrayForKey:key];
}

+ (NSString *)stringForKey:(NSString *)key {
    
    return [[UserDefaultsManager gimiGroupDefaults] stringForKey:key];
}

+ (id)objectForKey:(NSString *)key {
    
    return [[UserDefaultsManager gimiGroupDefaults] objectForKey:key];
}

+ (bool)boolForKey:(NSString *)key {
    
    return [[UserDefaultsManager gimiGroupDefaults] boolForKey:key];
}

+ (NSArray *)getAllKeys:(NSString *)key {
    
    return [[[UserDefaultsManager gimiGroupDefaults] dictionaryRepresentation] allKeys];
}

@end
