//
//  CTColumnView.m
//  DBCoreTextTest
//
//  Created by dengbin on 15/1/27.
//  Copyright (c) 2015年 IUAIJIA. All rights reserved.
//

#import "CTColumnView.h"
#import <CoreText/CoreText.h>
@implementation CTColumnView
-(void)setCTFrame: (id) f
{
    ctFrame = f;
}

-(void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    // Flip the coordinate system
    CGContextSetTextMatrix(context, CGAffineTransformIdentity);
    CGContextTranslateCTM(context, 0, self.bounds.size.height);
    CGContextScaleCTM(context, 1.0, -1.0);
    
    CTFrameDraw((CTFrameRef)ctFrame, context);
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
