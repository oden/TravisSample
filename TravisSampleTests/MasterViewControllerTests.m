//
//  MasterViewControllerTests.m
//  TravisSample
//
//  Created by 小田 雄帆 on 2016/03/24.
//  Copyright © 2016年 JITAKUKEIBI INC. All rights reserved.
//

#import <KIF.h>
#import "MasterViewController.h"

/**
 *  MasterViewControllerのテスト
 */
@interface MasterViewControllerTests : KIFTestCase

@end

@implementation MasterViewControllerTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

/**
 *  一歩進んで一歩下がる
 */
- (void)testAdd {
    [tester tapViewWithAccessibilityLabel:@"Add"];
    [tester tapRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:0] inTableView:self.masterViewController.tableView];
    [tester tapViewWithAccessibilityLabel:@"Master"];
}

#pragma mark - Private

- (MasterViewController*)masterViewController {
    UISplitViewController* rootViewController = (id)UIApplication.sharedApplication.keyWindow.rootViewController;
    UINavigationController* navigationController = rootViewController.viewControllers[0];
    return navigationController.viewControllers[0];
}

@end
