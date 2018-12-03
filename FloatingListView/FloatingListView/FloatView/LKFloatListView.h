//
//  LKFloatListView.h
//  FloatingListView
//
//  Created by 李凯 on 2018/12/3.
//  Copyright © 2018年 李凯. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LKFloatListItem.h"

@interface LKFloatListView : UIButton

@property (nonatomic, copy) NSArray<LKFloatListItem *> *items;

@end
