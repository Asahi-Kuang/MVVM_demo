//
//  ArrayDataSource.m
//  MVVM
//
//  Created by Kxx.xxQ 一生相伴 on 16/3/11.
//  Copyright © 2016年 Asahi_Kuang. All rights reserved.
//

#import "ArrayDataSource.h"

@implementation ArrayDataSource

#pragma mark - methods
- (instancetype)initWithDataArray:(NSArray *)array reuseIdentifier:(NSString *)identifier block:(cellBlock)block {
    self = [super init];
    if (self) {
        //
        _dataArray = array;
        _cellIdentifier = identifier;
        _cellBlock = [block copy];
    }
    return self;
}

- (id)objectAtIndexPath:(NSIndexPath *)indexPath {
    return _dataArray[indexPath.row];
}
#pragma mark --

#pragma mark - UITableView Delegate && DataSource
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    id cell = [tableView dequeueReusableCellWithIdentifier:_cellIdentifier forIndexPath:indexPath];
    return cell;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    id item = [self objectAtIndexPath:indexPath];
    _cellBlock(cell, item);
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_dataArray count];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100.f;
}

#pragma mark --

@end
