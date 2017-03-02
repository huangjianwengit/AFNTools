//
//  ViewController.m
//  AFNRequestTool
//
//  Created by Jivan on 2017/3/2.
//  Copyright © 2017年 Jivan. All rights reserved.
//

#import "ViewController.h"
#import "JHNetWorkTools.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self getData];
}

-(void)getData
{
    
    NSString* UrlStr = @"user/mylist/536/2"  ;
    
    [JHNetWorkTools requestURL:UrlStr httpMethod:METHOD_GET params:nil complection:^(id result) {
        
        NSLog(@"---  >%@",result);
    }];
    [JHNetWorkTools requestAFURL:UrlStr httpMethod:METHOD_GET parameters:nil succeed:^(id result) {
        NSLog(@"%@",result);
    } failure:^(NSError * error) {
        NSLog(@"%@",error);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
