//
//  BasicGraphView_2.m
//  Quartz2DDemo
//
//  Created by 刘健 on 16/6/2.
//  Copyright © 2016年 刘健. All rights reserved.
//

#import "BasicGraphView_2.h"

@implementation BasicGraphView_2


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    [self drawBasicLine:context];
    [self drawBeziercurve:context];
    [self drawImage:nil];
}

- (void)drawBasicLine:(CGContextRef)context
{
    CGContextMoveToPoint(context, 20, 70);
    CGContextAddLineToPoint(context, 20, 120);
    CGContextAddLineToPoint(context, 300, 120);
    
    CGContextClosePath(context);
    
    [[UIColor redColor] setStroke];
    [[UIColor greenColor] setFill];
    
    CGContextDrawPath(context, kCGPathFillStroke);
}

- (void)drawBeziercurve:(CGContextRef)context
{
    CGContextMoveToPoint(context, 20, 200);
    CGContextAddQuadCurveToPoint(context, 160, 120, 300, 200);
    
    CGContextMoveToPoint(context, 20, 350);
    CGContextAddCurveToPoint(context, 80, 200, 100, 350, 300, 350);
    
    [[UIColor yellowColor] setFill];
    [[UIColor redColor] setStroke];
    
    CGContextDrawPath(context, kCGPathFillStroke);
}

- (void)drawImage:(CGContextRef)context
{
    UIImage *image = [UIImage imageNamed:@"xx"];
    //从某一点开始绘制
    [image drawAtPoint:CGPointMake(20, 360)];
    //绘制到指定的矩形中，注意如果大小不合适会会进行拉伸
    [image drawInRect:CGRectMake(300, 100, 100, 100)];
    //平铺绘制
    [image drawAsPatternInRect:CGRectMake(330, 230, 80, 450)];
}


@end
