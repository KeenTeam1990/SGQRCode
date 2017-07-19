//
//  ScanSuccessJumpVC.h
//  SGQRCodeExample
//      QQ：812144991
//      Email：Keen_Team@163.com
//      GitHub：https://github.com/KeenTeam1990/SGQRCode.git
//  Created by kingsic on 16/8/29.
//  Copyright © 2016年 kingsic. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScanSuccessJumpVC : UIViewController

/** 接收扫描的二维码信息 */
@property (nonatomic, copy) NSString *jump_URL;
/** 接收扫描的条形码信息 */
@property (nonatomic, copy) NSString *jump_bar_code;

@end
