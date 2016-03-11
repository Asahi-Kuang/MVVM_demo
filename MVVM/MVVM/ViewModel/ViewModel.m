//
//  ViewModel.m
//  MVVM
//
//  Created by Kxx.xxQ 一生相伴 on 16/3/11.
//  Copyright © 2016年 Asahi_Kuang. All rights reserved.
//

#import "ViewModel.h"

@implementation ViewModel
- (instancetype)initWithModel:(Model *)model {
    self = [super init];
    if (self) {
        _model = model;
        if (!_model) {
            return nil;
        }
        _data     = _model.iconData;
        _name     = [NSString stringWithFormat:@"姓名: %@", _model.nameString];
        _gender   = [NSString stringWithFormat:@"性别: %@", _model.genderString];
        _idString = [NSString stringWithFormat:@"学号: %@", _model.stuIdString];
    }
    return self;
}
@end
