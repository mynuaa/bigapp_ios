//
//  LoginViewController.h
//  Clan
//
//  Created by chivas on 15/3/12.
//  Copyright (c) 2015年 Youzu. All rights reserved.
//

#import "BaseViewController.h"
#import <UIKit/UIKit.h>

@interface LoginViewController : BaseViewController<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *textAccount;
@property (weak, nonatomic) IBOutlet UITextField *textPassword;
@property (strong, nonatomic)NSString *fid;
@property (strong, nonatomic) UIView *bottomView;
@property (assign, nonatomic) BOOL isYouZu;
@end
