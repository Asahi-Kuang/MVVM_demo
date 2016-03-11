//
//  ViewModel.h
//  MVVM
//
//  Created by Kxx.xxQ 一生相伴 on 16/3/11.
//  Copyright © 2016年 Asahi_Kuang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Model.h"

@interface ViewModel : NSObject
@property (nonatomic, strong)Model *model;
@property (nonatomic, strong)NSData *data;
@property (nonatomic, copy)NSString *name;
@property (nonatomic, copy)NSString *gender;
@property (nonatomic, copy)NSString *idString;

- (instancetype)initWithModel:(Model *)model;
@end
