//
//  Model.h
//  MVVM
//
//  Created by Kxx.xxQ 一生相伴 on 16/3/11.
//  Copyright © 2016年 Asahi_Kuang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Model : NSObject
@property (nonatomic, strong)NSData *iconData;
@property (nonatomic, copy)NSString *nameString;
@property (nonatomic, copy)NSString *genderString;
@property (nonatomic, copy)NSString *stuIdString;


- (instancetype)initWithDictionary:(NSDictionary *)dict;
+ (instancetype)modelWithDictionary:(NSDictionary *)dict;
@end
