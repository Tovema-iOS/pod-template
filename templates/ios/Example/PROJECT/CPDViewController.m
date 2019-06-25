//
//  CPDViewController.m
//  PROJECT
//
//  Created by PROJECT_OWNER on TODAYS_DATE.
//  Copyright (c) TODAYS_YEAR PROJECT_OWNER. All rights reserved.
//

#import "CPDViewController.h"

@interface CPDViewController ()

@end

@implementation CPDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
#if 0
#warning 测试
    self.autoClickIndexPath = [NSIndexPath indexPathForRow:0 inSection:0];
#endif
}

- (NSArray<TestSection*> *)createSections {
    NSMutableArray<TestSection *> *sections = [NSMutableArray array];
    
    [sections addObject:[self createTestSection]];
    
    return sections;
}

- (TestSection *)createTestSection {
    NSMutableArray<TestCell *> *array = [NSMutableArray array];
    [array addObject:[TestCell cellWithTitle:@"Test" operation:[NSBlockOperation blockOperationWithBlock:^{
        NSLog(@"Hello Pod");
    }]]];
    
    return [TestSection sectionWithTitle:@"Test" items:array];
}

@end
