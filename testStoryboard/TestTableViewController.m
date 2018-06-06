//
//  TestTableViewController.m
//  testStoryboard
//
//  Created by 吴迪 on 18/6/6.
//  Copyright © 2018年 No. All rights reserved.
//

#import "TestTableViewController.h"

@interface TestTableViewController () <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UILabel *holdLabel;

@end

@implementation TestTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"storyboard创建tableview";
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    switch (section) {
        case 0:
        {
            return 9;
        }
            break;
        case 1:
        {
            return 2;
        }
            break;
        case 2:
        {
            return 3;
        }
            break;
        default:
            return 0;
            break;
    }
}


- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    switch (section) {
        case 0:
        {
            UIView *v = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 300, 100)];
            v.backgroundColor = [UIColor yellowColor];
            UILabel *l = [[UILabel alloc]initWithFrame:CGRectMake(10, 10, 300, 44)];
            l.text = @"我是第一个Section Header";
            [v addSubview:l];
            return v;
        }
            break;
        case 1:
        {
            UIView *v = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 300, 44)];
            v.backgroundColor = [UIColor yellowColor];
            UILabel *l = [[UILabel alloc]initWithFrame:CGRectMake(10, 10, 300, 22)];
            l.text = @"我是第2个Section Header";
            [v addSubview:l];
            return v;
        }
            break;
        case 2:
        {
            UIView *v = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 300, 60)];
            v.backgroundColor = [UIColor yellowColor];
            UILabel *l = [[UILabel alloc]initWithFrame:CGRectMake(10, 10, 300, 44)];
            l.text = @"我是第3个Section Header";
            [v addSubview:l];
            return v;
        }
            break;
        default:
            return 0;
            break;
    }
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    switch (section) {
        case 0:
        {
            return 100;
        }
            break;
        case 1:
        {
            return 44;
        }
            break;
        case 2:
        {
            return 60;
        }
            break;
        default:
            return 0;
            break;
    }
}


- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    UIView *v = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 300, 20)];
    v.backgroundColor = [UIColor redColor];
    UILabel *l = [[UILabel alloc]initWithFrame:CGRectMake(10, 5, 100, 15)];
    l.text = @"我是Section footer";
    l.font = [UIFont systemFontOfSize:8];
    [v addSubview:l];
    return v;
}


- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 20.f;
}


/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
