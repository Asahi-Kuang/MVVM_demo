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
        _name     = _model.nameString;
        _gender   = _model.genderString;
        _idString = _model.stuIdString;
    }
    return self;
}
@end
