//
//  LKFloatListView.m
//  FloatingListView
//
//  Created by 李凯 on 2018/12/3.
//  Copyright © 2018年 李凯. All rights reserved.
//

#import "LKFloatListView.h"
#import "Masonry.h"
#import "LKConst.h"

#define floatListItemWidth 100  //不写固定值
#define floatListItemHeight 40

@interface LKFloatListItem ()

//@property (nonatomic, strong) UIView *containerView;
//@property (nonatomic, strong) UIView *singleLine;

@end

@implementation LKFloatListView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)setItems:(NSArray<LKFloatListItem *> *)items {
    _items = items;
    [self initSubviews];
}

- (void)initSubviews {
    UIView *containerView = [[UIView alloc]init];
    [self addSubview:containerView];
    containerView.backgroundColor = [UIColor blackColor];
    [containerView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self).offset(kStatusAndNavigationBarHeight + 6);
        make.right.equalTo(self).offset(-10);
        make.width.offset(floatListItemWidth);
        make.height.offset(self.items.count * floatListItemHeight);
    }];
    
    int i = 0;
    for (LKFloatListItem *item in self.items) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setImage:[UIImage imageNamed:item.imageName] forState:UIControlStateNormal];
        [btn setTitle:item.text forState:UIControlStateNormal];
        [btn setFrame:CGRectMake(0, i * floatListItemHeight, floatListItemWidth, floatListItemHeight)];
        [containerView addSubview:btn];
        
        if (self.items.lastObject != item) {
            UIView *singleLine = [[UIView alloc]init];
            singleLine.backgroundColor = [UIColor whiteColor];
            [containerView addSubview:singleLine];
            [singleLine mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.right.bottom.equalTo(btn);
                make.height.offset(1/[UIScreen mainScreen].scale);
            }];
        }
        
        i++;
    }
}


@end
