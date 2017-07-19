//
//  如遇到问题或有更好方案，请通过以下方式进行联系
//      QQ：812144991
//      Email：Keen_Team@163.com
//      GitHub：https://github.com/KeenTeam1990/SGQRCode.git
//
//  UIImage+SGHelper.m
//  SGQRCodeExample
//
//  Created by apple on 17/3/27.
//  Copyright © 2017年 Sorgle. All rights reserved.
//

#import "UIImage+SGHelper.h"

#define SGQRCodeScreenWidth [UIScreen mainScreen].bounds.size.width
#define SGQRCodeScreenHeight [UIScreen mainScreen].bounds.size.height

@implementation UIImage (SGHelper)

/// 返回一张不超过屏幕尺寸的 image
+ (UIImage *)imageSizeWithScreenImage:(UIImage *)image {
    CGFloat imageWidth = image.size.width;
    CGFloat imageHeight = image.size.height;
    CGFloat screenWidth = SGQRCodeScreenWidth;
    CGFloat screenHeight = SGQRCodeScreenHeight;
    
    if (imageWidth <= screenWidth && imageHeight <= screenHeight) {
        return image;
    }
    
    CGFloat max = MAX(imageWidth, imageHeight);
    CGFloat scale = max / (screenHeight * 2.0);
    
    CGSize size = CGSizeMake(imageWidth / scale, imageHeight / scale);
    UIGraphicsBeginImageContext(size);
    [image drawInRect:CGRectMake(0, 0, size.width, size.height)];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return newImage;
}


@end

