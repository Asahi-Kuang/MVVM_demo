//
//  MVVMTests.m
//  MVVMTests
//
//  Created by Kxx.xxQ 一生相伴 on 16/3/11.
//  Copyright © 2016年 Asahi_Kuang. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewModel.h"
#import "Model.h"

@interface MVVMTests : XCTestCase

@end

@implementation MVVMTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSDictionary *dict1 = @{@"iconData":UIImagePNGRepresentation([UIImage imageNamed:@"face2"]), @"nameString":@"Asahi Kuang", @"genderString":@"Male", @"stuIdString":@"19910923"};
    Model *model = [Model modelWithDictionary:dict1];
    ViewModel *vm = [[ViewModel alloc] initWithModel:model];
    XCTAssert([vm.name isEqualToString:dict1[@"nameString"]]);
    XCTAssert([vm.gender isEqualToString:dict1[@"genderString"]]);
    XCTAssert([vm.idString isEqualToString:dict1[@"stuIdString"]]);
    XCTAssert([vm.data isKindOfClass:[NSData class]]);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
