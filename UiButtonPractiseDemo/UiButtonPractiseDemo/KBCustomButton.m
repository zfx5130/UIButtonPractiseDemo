//
//  KBCustomButton.m
//  UiButtonPractiseDemo
//
//  Created by admin on 16/12/12.
//  Copyright © 2016年 thomas. All rights reserved.
//

#import "KBCustomButton.h"

@interface KBCustomButton ()

@property (nonatomic, assign) CustomButtonType customButtonType;

@end

@implementation KBCustomButton

- (void)setButtonTypeValue:(NSInteger)buttonTypeValue {
    _buttonTypeValue = buttonTypeValue;
    self.customButtonType = [self buttonTypeWithValue:self.buttonTypeValue];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    NSLog(@":::::::::asdfafda:::::%@",@(self.customButtonType));
    switch (self.customButtonType) {
        case CustomButtonTypeLeftImage: {
            
        }
            break;
        case CustomButtonTypeRightImage: {
            CGRect imageRect = self.imageView.frame;
            imageRect.size = CGSizeMake(30, 30);
            imageRect.origin.x = (self.frame.size.width - 30) ;
            imageRect.origin.y = (self.frame.size.height  - 30)/2.0f;
            CGRect titleRect = self.titleLabel.frame;
            titleRect.origin.x = (self.frame.size.width - imageRect.size.width- titleRect.size.width);
            titleRect.origin.y = (self.frame.size.height - titleRect.size.height)/2.0f;
            self.imageView.frame = imageRect;    self.titleLabel.frame = titleRect;
        }
            break;
        case CustomButtonTypeTopImage: {
            CGRect imageRect = self.imageView.frame;
            
            imageRect.size = CGSizeMake(30, 30);
            imageRect.origin.x = (self.frame.size.width - 30) * 0.5;
            imageRect.origin.y = self.frame.size.height * 0.5 - 40;
            CGRect titleRect = self.titleLabel.frame;
            titleRect.origin.x = (self.frame.size.width - titleRect.size.width) * 0.5;
            titleRect.origin.y = self.frame.size.height * 0.5 ;
            self.imageView.frame = imageRect;
            self.titleLabel.frame = titleRect;
        }
            break;
        case CustomButtonTypeBottomImage: {
        
        }
            break;
        default:
            break;
    }
}

- (CustomButtonType)buttonTypeWithValue:(NSInteger)value {
    switch (value) {
        case 0:
            return CustomButtonTypeLeftImage;
            break;
        case 1:
            return CustomButtonTypeRightImage;
            break;
        case 2:
            return CustomButtonTypeTopImage;
            break;
        case 3:
            return CustomButtonTypeBottomImage;
            break;
        default:
            break;
    }
    return CustomButtonTypeLeftImage;
}


@end
