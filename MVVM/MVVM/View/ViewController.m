//
//  ViewController.m
//  MVVM
//
//  Created by Kxx.xxQ 一生相伴 on 16/3/11.
//  Copyright © 2016年 Asahi_Kuang. All rights reserved.
//

#import "ViewController.h"
#import "ArrayDataSource.h"
#import "MyCell.h"
#import "ViewModel.h"
#import "MockDataHandler.h"

static NSString *const identifier = @"cellIdentifier";
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic)ArrayDataSource *dataSource;
@property (copy, nonatomic)NSMutableArray *dataArray;
@property (strong, nonatomic)MockDataHandler *mockHandler;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self mockData];
    [self configureTableView];
}

- (void)viewDidLayoutSubviews {
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 数据mock
- (void)mockData {
    _mockHandler = [[MockDataHandler alloc] init];
    self.dataArray = _mockHandler.mockDatas;
}

- (void)configureTableView {
    [_tableView registerNib:[UINib nibWithNibName:@"MyCell" bundle:nil] forCellReuseIdentifier:identifier];
    _dataSource = [[ArrayDataSource alloc] initWithDataArray:self.dataArray reuseIdentifier:identifier block:^(id cell, id viewModel) {
        //
        MyCell *mCell          = cell;
        ViewModel *vm          = viewModel;
        
        mCell.nameLabel.text   = vm.name;
        mCell.genderLabel.text = vm.gender;
        mCell.idLabel.text     = vm.idString;
        
        dispatch_async(dispatch_get_global_queue(0, DISPATCH_QUEUE_PRIORITY_DEFAULT), ^{
            //
            UIImage *icon = [UIImage imageWithData:vm.data];
            dispatch_async(dispatch_get_main_queue(), ^{
                //
                mCell.iconImageView.image = icon;
            });
        });
    }];
    
    [_tableView setDataSource:_dataSource];
    [_tableView setDelegate:_dataSource];
    [_tableView setTableFooterView:[UIView new]];
}

@end
