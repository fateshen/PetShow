//
//  MineViewController.m
//  PetShow
//
//  Created by Apple on 15/10/25.
//  Copyright © 2015年 Apple. All rights reserved.
//

#import "MineViewController.h"
#import "SZTools.h"

@interface MineViewController ()

@end

@implementation MineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=[NSString stringWithFormat:@"我的"];
    CGFloat colorsNum=235/255.0;
    self.view.backgroundColor=[UIColor colorWithRed:colorsNum green:colorsNum blue:colorsNum alpha:1];
    [self makeUI];
    
    
    
}

-(void)makeUI
{
    //头部视图
    UIView *headView=[[UIView alloc]initWithFrame:CGRectMake(0, 64, KDeviceW, 80)];
    headView.backgroundColor=[UIColor cyanColor];
    [self.view addSubview:headView];
    
    UIImageView *headImg=[[UIImageView alloc]initWithFrame:CGRectMake(15, 20, 50, 50)];
    headImg.image=[UIImage imageNamed:@"head"];
    headImg.layer.masksToBounds=YES;
    headImg.layer.cornerRadius=10;
    [headView addSubview:headImg];
    
    UILabel *nameLab=[[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(headImg.frame)+5, 25, KDeviceW-100, 25)];
    nameLab.text=[NSString stringWithFormat:@"XXX宠物之家"];
    nameLab.font=[UIFont systemFontOfSize:15];
    nameLab.textColor=[UIColor whiteColor];
    [headView addSubview:nameLab];
    
    UILabel *numLab=[[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(headImg.frame)+5, CGRectGetMaxY(nameLab.frame)+5, KDeviceW-100, 22)];
    numLab.text=[NSString stringWithFormat:@"宠友号：xx123456"];
    numLab.textColor=[UIColor whiteColor];
    numLab.font=[UIFont systemFontOfSize:13];
    [headView addSubview:numLab];
    
    UIImageView *eweiView=[[UIImageView alloc]initWithFrame:CGRectMake(KDeviceW-60, 30, 40, 40)];
    eweiView.image=[UIImage imageNamed:@"sz_ewei"];
    [headView addSubview:eweiView];
    
    UIImageView *rightView=[[UIImageView alloc]initWithFrame:CGRectMake(KDeviceW-15, 30+10, 10, 20)];
    rightView.image=[UIImage imageNamed:@"sz_right"];
    [headView addSubview:rightView];
    
    CGFloat wwidth=(KDeviceW-20)/3;
    for (int i=0; i<3; i++) {
        UIView *vview=[[UIView alloc]initWithFrame:CGRectMake((wwidth+5)*i+5, CGRectGetMaxY(headView.frame)+5, wwidth, 65)];
        vview.backgroundColor=[UIColor lightGrayColor];
        [self.view addSubview:vview];
        if (i!=1) {
            UIImageView *vvImg=[[UIImageView alloc]initWithFrame:CGRectMake(wwidth/2-10, 10, 20, 20)];
            if(i==0)
                vvImg.image=[UIImage imageNamed:@"sz_quan"];
            else
                vvImg.image=[UIImage imageNamed:@"sz_qianbao"];
            [vview addSubview:vvImg];
        }
        else{
            UILabel *numberLab=[[UILabel alloc]initWithFrame:CGRectMake(5, 10, wwidth-10, 20)];
            numberLab.text=[NSString stringWithFormat:@"%d",30];
            numberLab.textAlignment=NSTextAlignmentCenter;
            numberLab.textColor=[UIColor whiteColor];
            numberLab.font=[UIFont systemFontOfSize:24];
            [vview addSubview:numberLab];
        }
        UILabel *llab=[[UILabel alloc]initWithFrame:CGRectMake(0, 30+5, wwidth, 25)];
        llab.text=@[@"宠友圈",@"好友",@"钱包"][i];
        llab.textColor=[UIColor whiteColor];
        llab.font=[UIFont systemFontOfSize:14];
        llab.textAlignment=NSTextAlignmentCenter;
        [vview addSubview:llab];
    }
    
    CGFloat wwidth2=(KDeviceW-6)/4;
    NSArray *imgArr=@[@"sz_add",@"sz_star",@"sz_huiyuan",@"sz_yanjing",@"sz_saoyisao",@"sz_help",@"sz_setting",@"sz_house"];
    for (int i=0; i<8; i++) {
        UIView *vview=[[UIView alloc]initWithFrame:CGRectMake((i>=4?i-4:i)*(wwidth2+2), (i>=4?1:0)*102+CGRectGetMaxY(headView.frame)+75, wwidth2, 100)];
        vview.backgroundColor=[UIColor whiteColor];
        [self.view addSubview:vview];
        
        UIImageView *vvimg=[[UIImageView alloc]initWithFrame:CGRectMake(wwidth2/2-25, 15, 50, 45)];
        vvimg.image=[UIImage imageNamed:[NSString stringWithFormat:@"%@",imgArr[i]]];
        [vview addSubview:vvimg];
        
        UILabel*llab=[[UILabel alloc]initWithFrame:CGRectMake(0, 65, wwidth2, 25)];
        llab.textAlignment=NSTextAlignmentCenter;
        llab.textColor=[UIColor blackColor];
        llab.text=@[@"添加宠友",@"爱宠等级",@"会员中心",@"偷看过我",@"扫一扫",@"帮助",@"设置",@"店铺申请"][i];
        [vview addSubview:llab];
    }
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
