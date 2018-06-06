//
//  ViewController.m
//  testStoryboard
//
//  Created by 吴迪 on 18/6/6.
//  Copyright © 2018年 No. All rights reserved.
//

#import "ViewController.h"
#import "TestTableViewController.h"
#import "TestViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor orangeColor];
}
- (IBAction)click1:(id)sender {
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"TestTableViewStoryboard" bundle:nil];
    TestTableViewController *tt = [sb instantiateInitialViewController];
    [self.navigationController pushViewController:tt animated:YES];
}


- (IBAction)click2:(id)sender {
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"TestViewControllerStoryboard" bundle:nil];
    TestViewController *tv = [sb instantiateViewControllerWithIdentifier:@"TestViewControllerStoryboard"];
    [self.navigationController pushViewController:tv animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
