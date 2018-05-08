//
//  ViewController.m
//  LVShotScreenDemo
//
//  Created by 孔友夫 on 2018/5/8.
//  Copyright © 2018年 LV. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

    {
        NSMutableArray *datasource ;
    }
    
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    datasource = @[
                  @"view截屏",
                   @"scollView 截屏(长图)",
                   @"web 截屏(长图)",
                   @"wkWebView 截图（生成长图）",
                   @"多图片图片合成（在图片上加logo)",
                   @"给截图打上标签，文本，裁剪，圆角",
                  @"截取图片的任意部分",@"图片擦除😜",
                   @"图片滤镜--怀旧，黑白，岁月，烙黄，冲印,...",
                   @"图片滤镜(高级)--饱和度，高斯模糊，老电影"];

                  [self.tableView reloadData];

 

}
    -(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
        return datasource.count;
    }

    -(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
        return 60;
    }
    -(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"];
        if(cell==nil){
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"UITableViewCell"];
        }
        cell.textLabel.text = datasource[indexPath.row];
        return cell;
    }

    -(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    }


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
