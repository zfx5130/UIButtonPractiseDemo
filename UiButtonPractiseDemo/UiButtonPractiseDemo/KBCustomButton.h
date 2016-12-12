//
//  KBCustomButton.h
//  UiButtonPractiseDemo
//
//  Created by admin on 16/12/12.
//  Copyright © 2016年 thomas. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    //左图右字
    CustomButtonTypeLeftImage = 0,
    //右图左字
    CustomButtonTypeRightImage = 1,
    //上图下字
    CustomButtonTypeTopImage = 2,
    //下图上字
    CustomButtonTypeBottomImage = 3,
    
} CustomButtonType;

IB_DESIGNABLE

@interface KBCustomButton : UIButton

@property (nonatomic, assign) IBInspectable NSInteger buttonTypeValue;

@end
