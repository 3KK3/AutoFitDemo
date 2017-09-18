//
//  ViewController.m
//  AutoFitDemo
//
//  Created by YZY on 2017/9/18.
//  Copyright © 2017年 YZY. All rights reserved.
//

#import "ViewController.h"
#import "Model.h"
#import "TableViewCell.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

{
    UITableView *_tableView;
    NSArray *_sourceArray;
}


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableArray *tempArray = [NSMutableArray array];
    
    for (NSInteger i = 0; i <= 10; i ++) {
        Model *model = [[Model alloc]init];
        
        switch (i) {
            case 0:{
                model.firstContent = @"发大水大法师发送的发送的发送的发送的阿萨德发";
                model.imgUrl = @"";
                model.secondContent = @"案发时";

            }
                break;
                
            case 2:{
                model.firstContent = @"发大水";
                model.imgUrl = @"fasdfasdfasdfasdfasdafas";
                model.secondContent = @"案发时";
            }
                break;
                
            case 3:{
                model.firstContent = @"";
                model.imgUrl = @"fasdfasdfasdfasdfasdafas";
                model.secondContent = @"";
            }
                break;
                
            case 4:{
                model.firstContent = @"";
                model.imgUrl = @"fasdfasdfasdfasdfasdafas";
                model.secondContent = @"案发时";
            }
                break;
                
            case 7:{
                model.firstContent = @"发大水大法师发送的发送的发送的发送的阿萨德发";
                model.imgUrl = @"fasdfasdfasdfasdfasdafas";
                model.secondContent = @"";
            }
                break;
                
            case 8:{
                model.firstContent = @"发大水大法师发送的发送的发送的发送的阿萨德发";
                model.imgUrl = @"";
                model.secondContent = @"案发时";
            }
                break;
                
            default:{
                model.firstContent = @"发大水大法";
                model.imgUrl = @"奥迪";
                model.secondContent = @"案发时";
            }
                break;
        }
        
        [tempArray addObject: model];
        
    }
    _sourceArray = [NSArray arrayWithArray: tempArray];

    _tableView = [[UITableView alloc] initWithFrame: CGRectMake(10,10, self.view.frame.size.width - 20, self.view.frame.size.height - 20)];
    [self.view addSubview: _tableView];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.tableFooterView = [[UIView alloc] init];
    _tableView.tableHeaderView = [[UIView alloc] init];
    [_tableView registerNib: [UINib nibWithNibName: @"TableViewCell" bundle: [NSBundle mainBundle]] forCellReuseIdentifier: @"TableViewCell"];
    
    _tableView.estimatedRowHeight = 120;
    
    [_tableView reloadData];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return _sourceArray.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    
    
    return UITableViewAutomaticDimension;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: @"TableViewCell"];
    
    cell.cellModel = _sourceArray[indexPath.row];
    
    return cell;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
