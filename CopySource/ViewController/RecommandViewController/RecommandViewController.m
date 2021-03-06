
//
//  RecommandViewController.m
//  CopySource
//
//  Created by zhengwenming on 2017/4/9.
//  Copyright © 2017年 zhengwenming. All rights reserved.
//

#import "RecommandViewController.h"
#import "SetViewController.h"
#import "SVandTVViewController.h"

@interface RecommandViewController ()

@end

@implementation RecommandViewController
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];

    UILabel *testLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width-2*10, 100)];
    testLabel.text = @"点击我测试-->\n（导航栏隐藏VC push到带导航VC，手势返回效果）";
    testLabel.backgroundColor = [UIColor orangeColor];
    testLabel.numberOfLines = 0;
    testLabel.center = self.view.center;
    testLabel.userInteractionEnabled = YES;
    [self.view addSubview:testLabel];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(testNav:)];
    [testLabel addGestureRecognizer:tap];
    
    
    
    
    UILabel *aLabel = [[UILabel alloc] initWithFrame:CGRectMake(testLabel.frame.origin.x, CGRectGetMaxY(testLabel.frame)+10, testLabel.frame.size.width, 100)];
    aLabel.text = @"点击我查看-->\n（UIScrollView和UITableView的联动效果）";
    aLabel.backgroundColor = [UIColor orangeColor];
    aLabel.numberOfLines = 0;
    aLabel.userInteractionEnabled = YES;
    [self.view addSubview:aLabel];
    
    UITapGestureRecognizer *atap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(seeScrollView:)];
    [aLabel addGestureRecognizer:atap];
}
-(void)seeScrollView:(UITapGestureRecognizer *)sender{
    SVandTVViewController *setVC = [SVandTVViewController new];
    [self.navigationController pushViewController:setVC animated:YES];
}
-(void)testNav:(UITapGestureRecognizer *)sender{
    SetViewController *setVC = [SetViewController new];
    setVC.isHideBackItem = NO;
    [self.navigationController pushViewController:setVC animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [super touchesBegan:touches withEvent:event];
    
    
}
-(BOOL)shouldAutorotate{
    return NO;
}
-(UIInterfaceOrientationMask)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskPortrait;
}

@end
