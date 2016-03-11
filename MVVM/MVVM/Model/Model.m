//
//  Model.m
//  MVVM
//
//  Created by Kxx.xxQ 一生相伴 on 16/3/11.
//  Copyright © 2016年 Asahi_Kuang. All rights reserved.
//

#import "Model.h"
#import <objc/runtime.h>

@implementation Model

- (instancetype)initWithDictionary:(NSDictionary *)dict {
    self = [super init];
    if (self) {
        [self assignValueToModelWithDictionary:dict];
    }
    return self;
}

+ (instancetype)modelWithDictionary:(NSDictionary *)dict {
    return [[self alloc] initWithDictionary:dict];
}

- (void)assignValueToModelWithDictionary:(NSDictionary *)dict {
    unsigned int count = 0;
    objc_property_t *properties = class_copyPropertyList([self class], &count);
    for (int i = 0; i < count; i ++) {
        objc_property_t property = properties[i];
        const char *propertyChar = property_getName(property);
        NSString *propertyString = [NSString stringWithUTF8String:propertyChar];
        [self setValue:dict[propertyString] forKey:propertyString];
    }
}

@end
