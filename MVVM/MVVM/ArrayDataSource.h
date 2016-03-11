//
//  ArrayDataSource.h
//  MVVM
//
//  Created by Kxx.xxQ 一生相伴 on 16/3/11.
//  Copyright © 2016年 Asahi_Kuang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void(^cellBlock)(id, id);

@interface ArrayDataSource : NSObject<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, copy)NSString *cellIdentifier;
@property (nonatomic, copy)cellBlock cellBlock;
@property (nonatomic, strong)NSArray *dataArray;

- (instancetype)initWithDataArray:(NSArray *)array reuseIdentifier:(NSString *)identifier block:(cellBlock)block;
- (id)objectAtIndexPath:(NSIndexPath *)indexPath;
@end
