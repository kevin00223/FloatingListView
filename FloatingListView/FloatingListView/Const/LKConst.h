//
//  LKConst.h
//  FloatingListView
//
//  Created by 李凯 on 2018/11/29.
//  Copyright © 2018年 李凯. All rights reserved.
//

#ifndef LKConst_h
#define LKConst_h

/*
 颜色
 */
#define LKHaxColor(f) [UIColor colorWithRed:(((f) >> 16) & 0x0000ff) / 255.0 green:(((f) >> 8) & 0x0000ff) / 255.0 blue:(((f)) & 0x0000ff) / 255.0 alpha:1.0]

#define LKBlueColor LKHaxColor(0x0f88eb)


#endif /* LKConst_h */
