//
//  MockDataHandler.m
//  MVVM
//
//  Created by Kxx.xxQ 一生相伴 on 16/3/11.
//  Copyright © 2016年 Asahi_Kuang. All rights reserved.
//

#import "MockDataHandler.h"
#import <UIKit/UIKit.h>
#import "Model.h"
#import "ViewModel.h"

@implementation MockDataHandler
- (instancetype)init {
    self = [super init];
    if (self) {
        //
        _mockDatas = [NSMutableArray array];
        [self mockDataDictionary];
    }
    return self;
}

- (void)mockDataDictionary {
    NSDictionary *dict1 = @{@"iconData":UIImagePNGRepresentation([UIImage imageNamed:@"face2"]), @"nameString":@"Asahi Kuang", @"genderString":@"Male", @"stuIdString":@"19910923"};
    NSDictionary *dict2 = @{@"iconData":UIImagePNGRepresentation([UIImage imageNamed:@"face1"]), @"nameString":@"Summer Love Fall", @"genderString":@"Female", @"stuIdString":@"19930713"};
    NSDictionary *dict3 = @{@"iconData":UIImagePNGRepresentation([UIImage imageNamed:@"face5"]), @"nameString":@"Kuang Xiao qiu", @"genderString":@"Female", @"stuIdString":@"20200923"};
    NSDictionary *dict4 = @{@"iconData":UIImagePNGRepresentation([UIImage imageNamed:@"face4"]), @"nameString":@"Allies", @"genderString":@"Female", @"stuIdString":@"19940518"};
    NSDictionary *dict5 = @{@"iconData":UIImagePNGRepresentation([UIImage imageNamed:@"face3"]), @"nameString":@"Jacky", @"genderString":@"Male", @"stuIdString":@"19970419"};
    NSArray *mockDatas = @[dict1, dict2, dict3, dict4, dict5];
    
    for (int i = 0; i < [mockDatas count]; i ++) {
        Model *model = [Model modelWithDictionary:mockDatas[i]];
        ViewModel *vm = [[ViewModel alloc] initWithModel:model];
        [_mockDatas addObject:vm];
    }
}
@end
