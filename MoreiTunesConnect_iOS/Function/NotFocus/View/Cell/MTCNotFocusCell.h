//
//  MTCNotFocusCell.h
//  MoreiTunesConnect_iOS
//
//  Created by Dwang on 2018/3/23.
//  Copyright © 2018年 CoderDwang. All rights reserved.
//

#import "QMUITableViewCell.h"

@interface MTCNotFocusCell : QMUITableViewCell

/** logo */
psx(UIImageView, icon);

/** 名称 */
psx(QMUILabel, name);

/** 归属账号 */
psx(QMUILabel, attribution);

@end
