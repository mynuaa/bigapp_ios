//
//  AboutViewController.m
//  Clan
//
//  Created by 昔米 on 15/6/16.
//  Copyright (c) 2015年 Youzu. All rights reserved.
//

#import "AboutViewController.h"

@interface AboutViewController ()

@end

@implementation AboutViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self buildUI];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)buildUI
{
    self.title = @"关于我们";
    UIScrollView *scrolview = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, kSCREEN_WIDTH, kSCREEN_HEIGHT-64)];
    scrolview.showsVerticalScrollIndicator = NO;
    [self.view addSubview:scrolview];
    
    UIImageView *logoImage = [[UIImageView alloc]initWithFrame:CGRectMake((kSCREEN_WIDTH-60)/2, 58, 65, 65)];
    logoImage.contentMode = UIViewContentModeScaleAspectFill;
    logoImage.layer.cornerRadius = 5.0;
    logoImage.clipsToBounds = YES;
    logoImage.image = kIMG(@"AppIcon60x60");
    [scrolview addSubview:logoImage];
    
    UILabel *appinfo = [[UILabel alloc]initWithFrame:CGRectMake(15, kVIEW_BY(logoImage)+6, kSCREEN_WIDTH-30, 25)];
    appinfo.textAlignment = NSTextAlignmentCenter;
    appinfo.text = [NSString stringWithFormat:@"%@",[Util appName]];
    [scrolview addSubview:appinfo];
    
    UILabel *lbl_version = [[UILabel alloc]initWithFrame:CGRectMake(15, kVIEW_BY(appinfo)+4, kSCREEN_WIDTH-30, 20)];
    lbl_version.font = [UIFont fontWithSize:14.f];
    lbl_version.textColor = K_COLOR_DARK_Cell;
    lbl_version.textAlignment = NSTextAlignmentCenter;
    lbl_version.text = [NSString stringWithFormat:@"版本号：1.0.3 (%@)",[NSString returnStringWithPlist:kBIGAPPVERSION]];
    [scrolview addSubview:lbl_version];
    
    
    UILabel *lbl_time = [[UILabel alloc]initWithFrame:CGRectMake(15, kVIEW_BY(lbl_version)+2, kSCREEN_WIDTH-30, 20)];
    lbl_time.font = [UIFont fontWithSize:14.f];
    lbl_time.textColor = K_COLOR_DARK_Cell;
    lbl_time.textAlignment = NSTextAlignmentCenter;
    lbl_time.text = [NSString stringWithFormat:@"发布时间：2016.4.6  20:53"];
    [scrolview addSubview:lbl_time];
    
    UILabel *lbl_Repairer = [[UILabel alloc]initWithFrame:CGRectMake(15, kVIEW_BY(lbl_time)+2, kSCREEN_WIDTH-30, 20)];
    lbl_Repairer.font = [UIFont fontWithSize:14.f];
    lbl_Repairer.textColor = K_COLOR_DARK_Cell;
    lbl_Repairer.textAlignment = NSTextAlignmentCenter;
    lbl_Repairer.text = [NSString stringWithFormat:@"技术维护：纸飞机南航青年网络社区"];
    [scrolview addSubview:lbl_Repairer];
    
    UILabel *lbl_mail = [[UILabel alloc]initWithFrame:CGRectMake(15, kVIEW_BY(lbl_Repairer)+2, kSCREEN_WIDTH-30, 20)];
    lbl_mail.font = [UIFont fontWithSize:14.f];
    lbl_mail.textColor = K_COLOR_DARK_Cell;
    lbl_mail.textAlignment = NSTextAlignmentCenter;
    lbl_mail.text = [NSString stringWithFormat:@"iOS支持：monkeyclue@163.com"];
    [scrolview addSubview:lbl_mail];
    
    UILabel *lbl_upgrade_title = [[UILabel alloc]initWithFrame:CGRectMake(15, kVIEW_BY(lbl_mail)+30, kSCREEN_WIDTH-30, 20)];
    lbl_upgrade_title.numberOfLines = 0;
    lbl_upgrade_title.font = [UIFont fontWithSize:15.f];
    lbl_upgrade_title.textColor = K_COLOR_DARK;
    lbl_upgrade_title.textAlignment = NSTextAlignmentLeft;
    lbl_upgrade_title.text = [NSString stringWithFormat:@"更新内容:"];
    [scrolview addSubview:lbl_upgrade_title];
    
    UILabel *lbl_upgrade = [[UILabel alloc]initWithFrame:CGRectMake(15, kVIEW_BY(lbl_upgrade_title)+12, kSCREEN_WIDTH-30, 154)];
    lbl_upgrade.numberOfLines = 0;
    lbl_upgrade.font = [UIFont fontWithSize:14.f];
    lbl_upgrade.textColor = K_COLOR_DARK_Cell;
    lbl_upgrade.textAlignment = NSTextAlignmentLeft;
    lbl_upgrade.text = [NSString stringWithFormat:@"加入了网页推送启动页的功能：\n优化了其他bug。\n感谢PM的帮助么么哒( ´▽｀)\n\n\n\n\n\n"];//此处提行挤居上
    [scrolview addSubview:lbl_upgrade];
    
    UIFont *desFont = [UIFont fontWithSize:12.f];
    NSString *des_app = [NSString returnPlistWithKeyValue:kAppDescription];
//    des_app = @"在iPhone上也能使用UIPopoverController。这个代码库不但让UIPopoverController的使用变得简单，同时也能在iPhone上使用UIPopoverController。点击任意控件，如按钮、导航条按钮、工具条按钮等，都会弹出视图。弹出的视图会自动定位在相应的按钮旁边，并且有小箭头指向这个按钮。可以在视图上加文字或者列表。在iPhone上也能使用UIPopoverController。这个代码库不但让UIPopoverController的使用变得简单，同时也能在iPhone上使用UIPopoverController。点击任意控件，如按钮、导航条按钮、工具条按钮等，都会弹出视图。弹出的视图会自动定位在相应的按钮旁边，并且有小箭头指向这个按钮。可以在视图上加文字或者列表。在iPhone上也能使用UIPopoverController。这个代码库不但让UIPopoverController的使用变得简单，同时也能在iPhone上使用UIPopoverController。点击任意控件，如按钮、导航条按钮、工具条按钮等，都会弹出视图。弹出的视图会自动定位在相应的按钮旁边，并且有小箭头指向这个按钮。可以在视图上加文字或者列表。在iPhone上也能使用UIPopoverController。这个代码库不但让UIPopoverController的使用变得简单，同时也能在iPhone上使用UIPopoverController。点击任意控件，如按钮、导航条按钮、工具条按钮等，都会弹出视图。弹出的视图会自动定位在相应的按钮旁边，并且有小箭头指向这个按钮。可以在视图上加文字或者列表。在iPhone上也能使用UIPopoverController。这个代码库不但让UIPopoverController的使用变得简单，同时也能在iPhone上使用UIPopoverController。点击任意控件，如按钮、导航条按钮、工具条按钮等，都会弹出视图。弹出的视图会自动定位在相应的按钮旁边，并且有小箭头指向这个按钮。可以在视图上加文字或者列表。在iPhone上也能使用UIPopoverController。这个代码库不但让UIPopoverController的使用变得简单，同时也能在iPhone上使用UIPopoverController。点击任意控件，如按钮、导航条按钮、工具条按钮等，都会弹出视图。弹出的视图会自动定位在相应的按钮旁边，并且有小箭头指向这个按钮。可以在视图上加文字或者列表。在iPhone上也能使用UIPopoverController。这个代码库不但让UIPopoverController的使用变得简单，同时也能在iPhone上使用UIPopoverController。点击任意控件，如按钮、导航条按钮、工具条按钮等，都会弹出视图。弹出的视图会自动定位在相应的按钮旁边，并且有小箭头指向这个按钮。可以在视图上加文字或者列表。在iPhone上也能使用UIPopoverController。这个代码库不但让UIPopoverController的使用变得简单，同时也能在iPhone上使用UIPopoverController。点击任意控件，如按钮、导航条按钮、工具条按钮等，都会弹出视图。弹出的视图会自动定位在相应的按钮旁边，并且有小箭头指向这个按钮。可以在视图上加文字或者列表。在iPhone上也能使用UIPopoverController。这个代码库不但让UIPopoverController的使用变得简单，同时也能在iPhone上使用UIPopoverController。点击任意控件，如按钮、导航条按钮、工具条按钮等，都会弹出视图。弹出的视图会自动定位在相应的按钮旁边，并且有小箭头指向这个按钮。可以在视图上加文字或者列表。";
    UITextView *tv = [[UITextView alloc]initWithFrame:CGRectMake(15, kVIEW_BY(lbl_version)+10, (kSCREEN_WIDTH-30), 0)];
    tv.text = des_app;
    tv.backgroundColor = kCLEARCOLOR;
    tv.textColor = K_COLOR_DARK_Cell;
    tv.font = desFont;
    tv.scrollEnabled = NO;
    tv.editable = NO;
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    paragraphStyle.lineSpacing = 6;// 字体的行间距
    NSDictionary *attributes = @{
                                 NSFontAttributeName:[UIFont systemFontOfSize:15],
                                 NSParagraphStyleAttributeName:paragraphStyle,
                                 NSForegroundColorAttributeName:K_COLOR_DARK_Cell
                                 };
    tv.attributedText = [[NSAttributedString alloc] initWithString:avoidNullStr(des_app) attributes:attributes];
    [scrolview addSubview:tv];
    [tv sizeToFit];
    
    float height = kVIEW_BY(tv) > kSCREEN_HEIGHT ? kVIEW_BY(tv)+10 : kSCREEN_HEIGHT;
    scrolview.contentSize = CGSizeMake(kSCREEN_WIDTH, height);
}

@end
