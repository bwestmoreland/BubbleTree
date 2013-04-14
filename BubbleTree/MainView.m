//
//  MainView.m
//  BubbleTree
//
//  Created by Brent Westmoreland on 4/13/13.
//  Copyright (c) 2013 Brent Westmoreland. All rights reserved.
//

#import "MainView.h"

@implementation MainView

- (void)drawRect:(CGRect)rect
{
    //// General Declarations
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //// Color Declarations
    UIColor* stemGreen = [UIColor colorWithRed: 0.016 green: 0.252 blue: 0.043 alpha: 1];
    UIColor* skyBlue = [UIColor colorWithRed: 0.341 green: 0.804 blue: 0.98 alpha: 1];
    UIColor* color0 = [UIColor colorWithRed: 0.341 green: 0.804 blue: 0.98 alpha: 0.21];
    
    //// Gradient Declarations
    NSArray* sVGID_1_Colors = [NSArray arrayWithObjects:
                               (id)color0.CGColor,
                               (id)skyBlue.CGColor, nil];
    CGFloat sVGID_1_Locations[] = {0, 1};
    CGGradientRef sVGID_1_ = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)sVGID_1_Colors, sVGID_1_Locations);
    
    //// halo Drawing
    UIBezierPath* haloPath = [UIBezierPath bezierPath];
    [haloPath moveToPoint: CGPointMake(402.21, 531.21)];
    [haloPath addCurveToPoint: CGPointMake(390.21, 547.8) controlPoint1: CGPointMake(402.21, 540.37) controlPoint2: CGPointMake(396.84, 547.8)];
    [haloPath addLineToPoint: CGPointMake(-39.33, 547.8)];
    [haloPath addCurveToPoint: CGPointMake(-51.33, 531.21) controlPoint1: CGPointMake(-45.96, 547.8) controlPoint2: CGPointMake(-51.33, 540.37)];
    [haloPath addLineToPoint: CGPointMake(-51.33, 17.54)];
    [haloPath addCurveToPoint: CGPointMake(-39.33, 0.95) controlPoint1: CGPointMake(-51.33, 8.38) controlPoint2: CGPointMake(-45.96, 0.95)];
    [haloPath addLineToPoint: CGPointMake(390.21, 0.95)];
    [haloPath addCurveToPoint: CGPointMake(402.21, 17.54) controlPoint1: CGPointMake(396.84, 0.95) controlPoint2: CGPointMake(402.21, 8.37)];
    [haloPath addLineToPoint: CGPointMake(402.21, 531.21)];
    [haloPath closePath];
    haloPath.miterLimit = 4;
    
    CGContextSaveGState(context);
    [haloPath addClip];
    CGContextDrawRadialGradient(context, sVGID_1_,
                                CGPointMake(175.44, 274.38), 0,
                                CGPointMake(175.44, 274.38), 251.18,
                                kCGGradientDrawsBeforeStartLocation | kCGGradientDrawsAfterEndLocation);
    CGContextRestoreGState(context);
    
    
    //// Tree
    {
        //// bottomStem Drawing
        UIBezierPath* bottomStemPath = [UIBezierPath bezierPath];
        [bottomStemPath moveToPoint: CGPointMake(195.44, 454.45)];
        [bottomStemPath addCurveToPoint: CGPointMake(227.43, 454.98) controlPoint1: CGPointMake(204.16, 467.01) controlPoint2: CGPointMake(218.51, 467.25)];
        [bottomStemPath addCurveToPoint: CGPointMake(235.77, 427.55) controlPoint1: CGPointMake(232.72, 447.7) controlPoint2: CGPointMake(235.68, 437.96)];
        [bottomStemPath addCurveToPoint: CGPointMake(227.89, 399.85) controlPoint1: CGPointMake(235.86, 417.14) controlPoint2: CGPointMake(233.06, 407.3)];
        [bottomStemPath addCurveToPoint: CGPointMake(179.56, 399.06) controlPoint1: CGPointMake(214.72, 380.88) controlPoint2: CGPointMake(193.04, 380.52)];
        [bottomStemPath addCurveToPoint: CGPointMake(178.86, 483.64) controlPoint1: CGPointMake(162.8, 422.11) controlPoint2: CGPointMake(162.49, 460.05)];
        [bottomStemPath addCurveToPoint: CGPointMake(216.24, 506.16) controlPoint1: CGPointMake(188.78, 497.93) controlPoint2: CGPointMake(202.05, 505.93)];
        [bottomStemPath addCurveToPoint: CGPointMake(253.99, 484.87) controlPoint1: CGPointMake(230.46, 506.41) controlPoint2: CGPointMake(243.84, 498.83)];
        [bottomStemPath addCurveToPoint: CGPointMake(255.09, 351.97) controlPoint1: CGPointMake(280.32, 448.66) controlPoint2: CGPointMake(280.81, 389.04)];
        [bottomStemPath addCurveToPoint: CGPointMake(136, 350.01) controlPoint1: CGPointMake(222.64, 305.21) controlPoint2: CGPointMake(169.22, 304.33)];
        [bottomStemPath addCurveToPoint: CGPointMake(125.38, 547.67) controlPoint1: CGPointMake(97.25, 403.31) controlPoint2: CGPointMake(93.56, 488.34)];
        [bottomStemPath addLineToPoint: CGPointMake(169.87, 547.67)];
        [bottomStemPath addCurveToPoint: CGPointMake(142.4, 359.25) controlPoint1: CGPointMake(127.24, 517.98) controlPoint2: CGPointMake(107.35, 407.46)];
        [bottomStemPath addCurveToPoint: CGPointMake(248.53, 360.99) controlPoint1: CGPointMake(172.01, 318.54) controlPoint2: CGPointMake(219.61, 319.32)];
        [bottomStemPath addCurveToPoint: CGPointMake(247.58, 475.64) controlPoint1: CGPointMake(270.72, 392.97) controlPoint2: CGPointMake(270.29, 444.4)];
        [bottomStemPath addCurveToPoint: CGPointMake(216.88, 493.26) controlPoint1: CGPointMake(239.31, 487.02) controlPoint2: CGPointMake(228.42, 493.26)];
        [bottomStemPath addCurveToPoint: CGPointMake(216.35, 493.25) controlPoint1: CGPointMake(216.7, 493.26) controlPoint2: CGPointMake(216.52, 493.26)];
        [bottomStemPath addCurveToPoint: CGPointMake(185.42, 474.62) controlPoint1: CGPointMake(204.61, 493.06) controlPoint2: CGPointMake(193.62, 486.44)];
        [bottomStemPath addCurveToPoint: CGPointMake(185.97, 408.29) controlPoint1: CGPointMake(172.58, 456.12) controlPoint2: CGPointMake(172.83, 426.37)];
        [bottomStemPath addCurveToPoint: CGPointMake(221.33, 408.88) controlPoint1: CGPointMake(195.83, 394.73) controlPoint2: CGPointMake(211.69, 394.99)];
        [bottomStemPath addCurveToPoint: CGPointMake(226.6, 427.4) controlPoint1: CGPointMake(224.79, 413.86) controlPoint2: CGPointMake(226.66, 420.43)];
        [bottomStemPath addCurveToPoint: CGPointMake(221.02, 445.75) controlPoint1: CGPointMake(226.54, 434.36) controlPoint2: CGPointMake(224.56, 440.88)];
        [bottomStemPath addCurveToPoint: CGPointMake(202, 445.43) controlPoint1: CGPointMake(215.72, 453.04) controlPoint2: CGPointMake(207.18, 452.9)];
        [bottomStemPath addCurveToPoint: CGPointMake(202.15, 426.52) controlPoint1: CGPointMake(198.34, 440.16) controlPoint2: CGPointMake(198.41, 431.68)];
        [bottomStemPath addCurveToPoint: CGPointMake(195.44, 454.45) controlPoint1: CGPointMake(190.23, 426.63) controlPoint2: CGPointMake(188.25, 444.09)];
        [bottomStemPath closePath];
        bottomStemPath.miterLimit = 4;
        
        [stemGreen setFill];
        [bottomStemPath fill];
        
        
        //// rightBranch Drawing
        UIBezierPath* rightBranchPath = [UIBezierPath bezierPath];
        [rightBranchPath moveToPoint: CGPointMake(138.35, 230.95)];
        [rightBranchPath addCurveToPoint: CGPointMake(123.95, 76.31) controlPoint1: CGPointMake(114.93, 193.61) controlPoint2: CGPointMake(99.85, 126.19)];
        [rightBranchPath addCurveToPoint: CGPointMake(207.12, 54.02) controlPoint1: CGPointMake(142.52, 37.88) controlPoint2: CGPointMake(179.83, 27.88)];
        [rightBranchPath addCurveToPoint: CGPointMake(219.27, 143.88) controlPoint1: CGPointMake(228.07, 74.08) controlPoint2: CGPointMake(233.52, 114.39)];
        [rightBranchPath addCurveToPoint: CGPointMake(197.25, 164.5) controlPoint1: CGPointMake(214.09, 154.62) controlPoint2: CGPointMake(206.28, 161.92)];
        [rightBranchPath addCurveToPoint: CGPointMake(196.83, 164.61) controlPoint1: CGPointMake(197.11, 164.54) controlPoint2: CGPointMake(196.97, 164.57)];
        [rightBranchPath addCurveToPoint: CGPointMake(170.56, 156.93) controlPoint1: CGPointMake(187.63, 167.08) controlPoint2: CGPointMake(178.3, 164.35)];
        [rightBranchPath addCurveToPoint: CGPointMake(163.52, 104.95) controlPoint1: CGPointMake(158.44, 145.33) controlPoint2: CGPointMake(155.28, 122.01)];
        [rightBranchPath addCurveToPoint: CGPointMake(191.24, 97.52) controlPoint1: CGPointMake(169.71, 92.15) controlPoint2: CGPointMake(182.15, 88.81)];
        [rightBranchPath addCurveToPoint: CGPointMake(197.45, 110.83) controlPoint1: CGPointMake(194.51, 100.65) controlPoint2: CGPointMake(196.71, 105.37)];
        [rightBranchPath addCurveToPoint: CGPointMake(195.15, 126.42) controlPoint1: CGPointMake(198.18, 116.29) controlPoint2: CGPointMake(197.37, 121.83)];
        [rightBranchPath addCurveToPoint: CGPointMake(180.24, 130.42) controlPoint1: CGPointMake(191.82, 133.31) controlPoint2: CGPointMake(185.13, 135.1)];
        [rightBranchPath addCurveToPoint: CGPointMake(178.23, 115.59) controlPoint1: CGPointMake(176.78, 127.1) controlPoint2: CGPointMake(175.88, 120.46)];
        [rightBranchPath addCurveToPoint: CGPointMake(176.12, 138.93) controlPoint1: CGPointMake(168.91, 118.34) controlPoint2: CGPointMake(169.33, 132.43)];
        [rightBranchPath addCurveToPoint: CGPointMake(201.2, 132.21) controlPoint1: CGPointMake(184.35, 146.81) controlPoint2: CGPointMake(195.6, 143.79)];
        [rightBranchPath addCurveToPoint: CGPointMake(204.63, 108.91) controlPoint1: CGPointMake(204.51, 125.34) controlPoint2: CGPointMake(205.73, 117.07)];
        [rightBranchPath addCurveToPoint: CGPointMake(195.36, 89.01) controlPoint1: CGPointMake(203.53, 100.74) controlPoint2: CGPointMake(200.24, 93.68)];
        [rightBranchPath addCurveToPoint: CGPointMake(157.48, 99.16) controlPoint1: CGPointMake(182.92, 77.1) controlPoint2: CGPointMake(165.93, 81.66)];
        [rightBranchPath addCurveToPoint: CGPointMake(166.44, 165.45) controlPoint1: CGPointMake(146.97, 120.91) controlPoint2: CGPointMake(150.99, 150.65)];
        [rightBranchPath addCurveToPoint: CGPointMake(198.21, 174.73) controlPoint1: CGPointMake(175.8, 174.41) controlPoint2: CGPointMake(187.08, 177.71)];
        [rightBranchPath addCurveToPoint: CGPointMake(225.32, 149.67) controlPoint1: CGPointMake(209.35, 171.75) controlPoint2: CGPointMake(218.96, 162.85)];
        [rightBranchPath addCurveToPoint: CGPointMake(211.24, 45.51) controlPoint1: CGPointMake(241.84, 115.48) controlPoint2: CGPointMake(235.52, 68.76)];
        [rightBranchPath addCurveToPoint: CGPointMake(117.9, 70.52) controlPoint1: CGPointMake(180.61, 16.18) controlPoint2: CGPointMake(138.73, 27.4)];
        [rightBranchPath addCurveToPoint: CGPointMake(135.5, 231.76) controlPoint1: CGPointMake(92.68, 122.72) controlPoint2: CGPointMake(100.82, 193.24)];
        [rightBranchPath addLineToPoint: CGPointMake(137.25, 231.26)];
        [rightBranchPath addCurveToPoint: CGPointMake(138.35, 230.95) controlPoint1: CGPointMake(136.65, 231.44) controlPoint2: CGPointMake(138.54, 231.26)];
        [rightBranchPath closePath];
        rightBranchPath.miterLimit = 4;
        
        [stemGreen setFill];
        [rightBranchPath fill];
        
        
        //// leftBranch Drawing
        UIBezierPath* leftBranchPath = [UIBezierPath bezierPath];
        [leftBranchPath moveToPoint: CGPointMake(125.22, 375.45)];
        [leftBranchPath addCurveToPoint: CGPointMake(118.65, 210.82) controlPoint1: CGPointMake(144.35, 330.19) controlPoint2: CGPointMake(150.63, 255.99)];
        [leftBranchPath addCurveToPoint: CGPointMake(29.13, 210.62) controlPoint1: CGPointMake(94.01, 176.02) controlPoint2: CGPointMake(53.85, 175.93)];
        [leftBranchPath addCurveToPoint: CGPointMake(29.02, 307.32) controlPoint1: CGPointMake(10.16, 237.23) controlPoint2: CGPointMake(10.11, 280.62)];
        [leftBranchPath addCurveToPoint: CGPointMake(54.77, 322.66) controlPoint1: CGPointMake(35.9, 317.05) controlPoint2: CGPointMake(45.03, 322.48)];
        [leftBranchPath addCurveToPoint: CGPointMake(55.22, 322.67) controlPoint1: CGPointMake(54.92, 322.67) controlPoint2: CGPointMake(55.07, 322.67)];
        [leftBranchPath addCurveToPoint: CGPointMake(81.45, 307.44) controlPoint1: CGPointMake(65.12, 322.69) controlPoint2: CGPointMake(74.44, 317.28)];
        [leftBranchPath addCurveToPoint: CGPointMake(81.52, 251.49) controlPoint1: CGPointMake(92.43, 292.04) controlPoint2: CGPointMake(92.46, 266.94)];
        [leftBranchPath addCurveToPoint: CGPointMake(51.69, 251.42) controlPoint1: CGPointMake(73.31, 239.9) controlPoint2: CGPointMake(59.92, 239.86)];
        [leftBranchPath addCurveToPoint: CGPointMake(47.1, 266.97) controlPoint1: CGPointMake(48.73, 255.57) controlPoint2: CGPointMake(47.1, 261.09)];
        [leftBranchPath addCurveToPoint: CGPointMake(51.65, 282.52) controlPoint1: CGPointMake(47.09, 272.84) controlPoint2: CGPointMake(48.71, 278.36)];
        [leftBranchPath addCurveToPoint: CGPointMake(67.7, 282.56) controlPoint1: CGPointMake(56.07, 288.76) controlPoint2: CGPointMake(63.27, 288.78)];
        [leftBranchPath addCurveToPoint: CGPointMake(67.72, 266.61) controlPoint1: CGPointMake(70.83, 278.17) controlPoint2: CGPointMake(70.84, 271.01)];
        [leftBranchPath addCurveToPoint: CGPointMake(73.16, 290.27) controlPoint1: CGPointMake(77.78, 266.89) controlPoint2: CGPointMake(79.31, 281.64)];
        [leftBranchPath addCurveToPoint: CGPointMake(46.18, 290.21) controlPoint1: CGPointMake(65.71, 300.72) controlPoint2: CGPointMake(53.61, 300.7)];
        [leftBranchPath addCurveToPoint: CGPointMake(39.36, 266.95) controlPoint1: CGPointMake(41.77, 283.99) controlPoint2: CGPointMake(39.35, 275.73)];
        [leftBranchPath addCurveToPoint: CGPointMake(46.23, 243.72) controlPoint1: CGPointMake(39.37, 258.16) controlPoint2: CGPointMake(41.81, 249.91)];
        [leftBranchPath addCurveToPoint: CGPointMake(87, 243.81) controlPoint1: CGPointMake(57.49, 227.92) controlPoint2: CGPointMake(75.78, 227.96)];
        [leftBranchPath addCurveToPoint: CGPointMake(86.91, 315.15) controlPoint1: CGPointMake(100.94, 263.51) controlPoint2: CGPointMake(100.91, 295.51)];
        [leftBranchPath addCurveToPoint: CGPointMake(55.21, 333.55) controlPoint1: CGPointMake(78.44, 327.04) controlPoint2: CGPointMake(67.18, 333.58)];
        [leftBranchPath addCurveToPoint: CGPointMake(23.54, 315.01) controlPoint1: CGPointMake(43.22, 333.54) controlPoint2: CGPointMake(31.99, 326.94)];
        [leftBranchPath addCurveToPoint: CGPointMake(23.67, 202.9) controlPoint1: CGPointMake(1.62, 284.05) controlPoint2: CGPointMake(1.68, 233.76)];
        [leftBranchPath addCurveToPoint: CGPointMake(124.12, 203.13) controlPoint1: CGPointMake(51.41, 163.98) controlPoint2: CGPointMake(96.47, 164.08)];
        [leftBranchPath addCurveToPoint: CGPointMake(128.29, 375.51) controlPoint1: CGPointMake(157.6, 250.41) controlPoint2: CGPointMake(158.96, 325.92)];
        [leftBranchPath addLineToPoint: CGPointMake(126.4, 375.47)];
        [leftBranchPath addCurveToPoint: CGPointMake(125.22, 375.45) controlPoint1: CGPointMake(127.05, 375.48) controlPoint2: CGPointMake(125.06, 375.83)];
        [leftBranchPath closePath];
        leftBranchPath.miterLimit = 4;
        
        [stemGreen setFill];
        [leftBranchPath fill];
        
        
        //// rightPetal Drawing
        UIBezierPath* rightPetalPath = [UIBezierPath bezierPath];
        [rightPetalPath moveToPoint: CGPointMake(264.42, 373.1)];
        [rightPetalPath addCurveToPoint: CGPointMake(257.13, 329.78) controlPoint1: CGPointMake(257, 363.46) controlPoint2: CGPointMake(251.32, 344.93)];
        [rightPetalPath addCurveToPoint: CGPointMake(280.28, 320.04) controlPoint1: CGPointMake(261.6, 318.11) controlPoint2: CGPointMake(271.99, 313.74)];
        [rightPetalPath addCurveToPoint: CGPointMake(285.59, 345.05) controlPoint1: CGPointMake(286.64, 324.88) controlPoint2: CGPointMake(289.02, 336.1)];
        [rightPetalPath addCurveToPoint: CGPointMake(279.76, 351.81) controlPoint1: CGPointMake(284.34, 348.32) controlPoint2: CGPointMake(282.27, 350.71)];
        [rightPetalPath addCurveToPoint: CGPointMake(279.65, 351.86) controlPoint1: CGPointMake(279.73, 351.83) controlPoint2: CGPointMake(279.68, 351.85)];
        [rightPetalPath addCurveToPoint: CGPointMake(272.03, 350.76) controlPoint1: CGPointMake(277.09, 352.94) controlPoint2: CGPointMake(274.38, 352.55)];
        [rightPetalPath addCurveToPoint: CGPointMake(268.95, 336.29) controlPoint1: CGPointMake(268.35, 347.96) controlPoint2: CGPointMake(266.97, 341.47)];
        [rightPetalPath addCurveToPoint: CGPointMake(276.67, 333.04) controlPoint1: CGPointMake(270.44, 332.4) controlPoint2: CGPointMake(273.91, 330.94)];
        [rightPetalPath addCurveToPoint: CGPointMake(278.71, 336.57) controlPoint1: CGPointMake(277.66, 333.8) controlPoint2: CGPointMake(278.38, 335.05)];
        [rightPetalPath addCurveToPoint: CGPointMake(278.38, 341.09) controlPoint1: CGPointMake(279.03, 338.09) controlPoint2: CGPointMake(278.91, 339.69)];
        [rightPetalPath addCurveToPoint: CGPointMake(274.23, 342.84) controlPoint1: CGPointMake(277.57, 343.18) controlPoint2: CGPointMake(275.71, 343.96)];
        [rightPetalPath addCurveToPoint: CGPointMake(273.35, 338.71) controlPoint1: CGPointMake(273.18, 342.04) controlPoint2: CGPointMake(272.79, 340.19)];
        [rightPetalPath addCurveToPoint: CGPointMake(273.23, 345.42) controlPoint1: CGPointMake(270.76, 339.87) controlPoint2: CGPointMake(271.17, 343.85)];
        [rightPetalPath addCurveToPoint: CGPointMake(280.21, 342.48) controlPoint1: CGPointMake(275.73, 347.32) controlPoint2: CGPointMake(278.87, 346)];
        [rightPetalPath addCurveToPoint: CGPointMake(280.71, 335.73) controlPoint1: CGPointMake(281.01, 340.4) controlPoint2: CGPointMake(281.19, 338)];
        [rightPetalPath addCurveToPoint: CGPointMake(277.66, 330.46) controlPoint1: CGPointMake(280.22, 333.46) controlPoint2: CGPointMake(279.14, 331.58)];
        [rightPetalPath addCurveToPoint: CGPointMake(267.12, 334.89) controlPoint1: CGPointMake(273.89, 327.59) controlPoint2: CGPointMake(269.16, 329.58)];
        [rightPetalPath addCurveToPoint: CGPointMake(271.03, 353.35) controlPoint1: CGPointMake(264.58, 341.5) controlPoint2: CGPointMake(266.34, 349.78)];
        [rightPetalPath addCurveToPoint: CGPointMake(280.24, 354.68) controlPoint1: CGPointMake(273.88, 355.51) controlPoint2: CGPointMake(277.15, 355.98)];
        [rightPetalPath addCurveToPoint: CGPointMake(287.43, 346.45) controlPoint1: CGPointMake(283.35, 353.38) controlPoint2: CGPointMake(285.89, 350.45)];
        [rightPetalPath addCurveToPoint: CGPointMake(281.27, 317.45) controlPoint1: CGPointMake(291.41, 336.07) controlPoint2: CGPointMake(288.65, 323.06)];
        [rightPetalPath addCurveToPoint: CGPointMake(255.29, 328.39) controlPoint1: CGPointMake(271.96, 310.39) controlPoint2: CGPointMake(260.31, 315.29)];
        [rightPetalPath addCurveToPoint: CGPointMake(263.63, 373.44) controlPoint1: CGPointMake(249.21, 344.25) controlPoint2: CGPointMake(252.98, 363.93)];
        [rightPetalPath addLineToPoint: CGPointMake(264.11, 373.24)];
        [rightPetalPath addCurveToPoint: CGPointMake(264.42, 373.1) controlPoint1: CGPointMake(263.95, 373.31) controlPoint2: CGPointMake(264.48, 373.18)];
        [rightPetalPath closePath];
        rightPetalPath.miterLimit = 4;
        
        [stemGreen setFill];
        [rightPetalPath fill];
        
        
        //// bottomPetal Drawing
        UIBezierPath* bottomPetalPath = [UIBezierPath bezierPath];
        [bottomPetalPath moveToPoint: CGPointMake(107.97, 463.89)];
        [bottomPetalPath addCurveToPoint: CGPointMake(104.94, 387.99) controlPoint1: CGPointMake(116.78, 443.03) controlPoint2: CGPointMake(119.68, 408.82)];
        [bottomPetalPath addCurveToPoint: CGPointMake(63.67, 387.9) controlPoint1: CGPointMake(93.58, 371.95) controlPoint2: CGPointMake(75.07, 371.91)];
        [bottomPetalPath addCurveToPoint: CGPointMake(63.62, 432.48) controlPoint1: CGPointMake(54.92, 400.17) controlPoint2: CGPointMake(54.9, 420.17)];
        [bottomPetalPath addCurveToPoint: CGPointMake(75.49, 439.56) controlPoint1: CGPointMake(66.79, 436.96) controlPoint2: CGPointMake(71, 439.47)];
        [bottomPetalPath addCurveToPoint: CGPointMake(75.7, 439.56) controlPoint1: CGPointMake(75.56, 439.56) controlPoint2: CGPointMake(75.63, 439.56)];
        [bottomPetalPath addCurveToPoint: CGPointMake(87.79, 432.54) controlPoint1: CGPointMake(80.26, 439.57) controlPoint2: CGPointMake(84.56, 437.08)];
        [bottomPetalPath addCurveToPoint: CGPointMake(87.82, 406.75) controlPoint1: CGPointMake(92.85, 425.44) controlPoint2: CGPointMake(92.86, 413.87)];
        [bottomPetalPath addCurveToPoint: CGPointMake(74.07, 406.71) controlPoint1: CGPointMake(84.03, 401.4) controlPoint2: CGPointMake(77.87, 401.39)];
        [bottomPetalPath addCurveToPoint: CGPointMake(71.95, 413.88) controlPoint1: CGPointMake(72.71, 408.62) controlPoint2: CGPointMake(71.95, 411.17)];
        [bottomPetalPath addCurveToPoint: CGPointMake(74.05, 421.05) controlPoint1: CGPointMake(71.95, 416.59) controlPoint2: CGPointMake(72.7, 419.13)];
        [bottomPetalPath addCurveToPoint: CGPointMake(81.45, 421.07) controlPoint1: CGPointMake(76.09, 423.93) controlPoint2: CGPointMake(79.41, 423.93)];
        [bottomPetalPath addCurveToPoint: CGPointMake(81.46, 413.71) controlPoint1: CGPointMake(82.89, 419.04) controlPoint2: CGPointMake(82.9, 415.74)];
        [bottomPetalPath addCurveToPoint: CGPointMake(83.97, 424.62) controlPoint1: CGPointMake(86.1, 413.84) controlPoint2: CGPointMake(86.8, 420.65)];
        [bottomPetalPath addCurveToPoint: CGPointMake(71.53, 424.59) controlPoint1: CGPointMake(80.53, 429.44) controlPoint2: CGPointMake(74.95, 429.43)];
        [bottomPetalPath addCurveToPoint: CGPointMake(68.38, 413.87) controlPoint1: CGPointMake(69.5, 421.73) controlPoint2: CGPointMake(68.38, 417.92)];
        [bottomPetalPath addCurveToPoint: CGPointMake(71.55, 403.16) controlPoint1: CGPointMake(68.39, 409.82) controlPoint2: CGPointMake(69.51, 406.01)];
        [bottomPetalPath addCurveToPoint: CGPointMake(90.35, 403.2) controlPoint1: CGPointMake(76.74, 395.88) controlPoint2: CGPointMake(85.17, 395.9)];
        [bottomPetalPath addCurveToPoint: CGPointMake(90.31, 436.09) controlPoint1: CGPointMake(96.77, 412.28) controlPoint2: CGPointMake(96.76, 427.04)];
        [bottomPetalPath addCurveToPoint: CGPointMake(75.69, 444.57) controlPoint1: CGPointMake(86.4, 441.57) controlPoint2: CGPointMake(81.21, 444.59)];
        [bottomPetalPath addCurveToPoint: CGPointMake(61.1, 436.03) controlPoint1: CGPointMake(70.16, 444.57) controlPoint2: CGPointMake(64.99, 441.53)];
        [bottomPetalPath addCurveToPoint: CGPointMake(61.15, 384.34) controlPoint1: CGPointMake(50.99, 421.75) controlPoint2: CGPointMake(51.02, 398.57)];
        [bottomPetalPath addCurveToPoint: CGPointMake(107.46, 384.45) controlPoint1: CGPointMake(73.94, 366.4) controlPoint2: CGPointMake(94.71, 366.45)];
        [bottomPetalPath addCurveToPoint: CGPointMake(109.38, 463.91) controlPoint1: CGPointMake(122.89, 406.24) controlPoint2: CGPointMake(123.52, 441.05)];
        [bottomPetalPath addLineToPoint: CGPointMake(108.51, 463.9)];
        [bottomPetalPath addCurveToPoint: CGPointMake(107.97, 463.89) controlPoint1: CGPointMake(108.81, 463.9) controlPoint2: CGPointMake(107.89, 464.07)];
        [bottomPetalPath closePath];
        bottomPetalPath.miterLimit = 4;
        
        [stemGreen setFill];
        [bottomPetalPath fill];
        
        
        //// topPetal Drawing
        UIBezierPath* topPetalPath = [UIBezierPath bezierPath];
        [topPetalPath moveToPoint: CGPointMake(106.15, 113.75)];
        [topPetalPath addCurveToPoint: CGPointMake(103.83, 55.72) controlPoint1: CGPointMake(112.89, 97.8) controlPoint2: CGPointMake(115.1, 71.65)];
        [topPetalPath addCurveToPoint: CGPointMake(72.28, 55.65) controlPoint1: CGPointMake(95.15, 43.46) controlPoint2: CGPointMake(80.99, 43.43)];
        [topPetalPath addCurveToPoint: CGPointMake(72.24, 89.74) controlPoint1: CGPointMake(65.59, 65.04) controlPoint2: CGPointMake(65.57, 80.33)];
        [topPetalPath addCurveToPoint: CGPointMake(81.32, 95.15) controlPoint1: CGPointMake(74.67, 93.17) controlPoint2: CGPointMake(77.88, 95.08)];
        [topPetalPath addCurveToPoint: CGPointMake(81.47, 95.15) controlPoint1: CGPointMake(81.37, 95.15) controlPoint2: CGPointMake(81.42, 95.15)];
        [topPetalPath addCurveToPoint: CGPointMake(90.72, 89.78) controlPoint1: CGPointMake(84.97, 95.16) controlPoint2: CGPointMake(88.25, 93.25)];
        [topPetalPath addCurveToPoint: CGPointMake(90.74, 70.06) controlPoint1: CGPointMake(94.59, 84.35) controlPoint2: CGPointMake(94.6, 75.51)];
        [topPetalPath addCurveToPoint: CGPointMake(80.23, 70.04) controlPoint1: CGPointMake(87.85, 65.98) controlPoint2: CGPointMake(83.13, 65.96)];
        [topPetalPath addCurveToPoint: CGPointMake(78.61, 75.52) controlPoint1: CGPointMake(79.19, 71.5) controlPoint2: CGPointMake(78.61, 73.45)];
        [topPetalPath addCurveToPoint: CGPointMake(80.22, 81) controlPoint1: CGPointMake(78.61, 77.59) controlPoint2: CGPointMake(79.18, 79.53)];
        [topPetalPath addCurveToPoint: CGPointMake(85.87, 81.01) controlPoint1: CGPointMake(81.77, 83.2) controlPoint2: CGPointMake(84.31, 83.2)];
        [topPetalPath addCurveToPoint: CGPointMake(85.88, 75.39) controlPoint1: CGPointMake(86.97, 79.47) controlPoint2: CGPointMake(86.98, 76.94)];
        [topPetalPath addCurveToPoint: CGPointMake(87.8, 83.73) controlPoint1: CGPointMake(89.42, 75.49) controlPoint2: CGPointMake(89.96, 80.69)];
        [topPetalPath addCurveToPoint: CGPointMake(78.29, 83.71) controlPoint1: CGPointMake(85.17, 87.42) controlPoint2: CGPointMake(80.9, 87.41)];
        [topPetalPath addCurveToPoint: CGPointMake(75.88, 75.51) controlPoint1: CGPointMake(76.73, 81.52) controlPoint2: CGPointMake(75.88, 78.61)];
        [topPetalPath addCurveToPoint: CGPointMake(78.31, 67.32) controlPoint1: CGPointMake(75.89, 72.41) controlPoint2: CGPointMake(76.75, 69.51)];
        [topPetalPath addCurveToPoint: CGPointMake(92.67, 67.36) controlPoint1: CGPointMake(82.27, 61.75) controlPoint2: CGPointMake(88.72, 61.77)];
        [topPetalPath addCurveToPoint: CGPointMake(92.64, 92.5) controlPoint1: CGPointMake(97.59, 74.3) controlPoint2: CGPointMake(97.58, 85.58)];
        [topPetalPath addCurveToPoint: CGPointMake(81.47, 98.99) controlPoint1: CGPointMake(89.66, 96.69) controlPoint2: CGPointMake(85.69, 99)];
        [topPetalPath addCurveToPoint: CGPointMake(70.31, 92.45) controlPoint1: CGPointMake(77.24, 98.98) controlPoint2: CGPointMake(73.29, 96.66)];
        [topPetalPath addCurveToPoint: CGPointMake(70.35, 52.94) controlPoint1: CGPointMake(62.58, 81.54) controlPoint2: CGPointMake(62.6, 63.82)];
        [topPetalPath addCurveToPoint: CGPointMake(105.76, 53.02) controlPoint1: CGPointMake(80.13, 39.22) controlPoint2: CGPointMake(96.01, 39.25)];
        [topPetalPath addCurveToPoint: CGPointMake(107.23, 113.78) controlPoint1: CGPointMake(117.56, 69.68) controlPoint2: CGPointMake(118.04, 96.3)];
        [topPetalPath addLineToPoint: CGPointMake(106.56, 113.76)];
        [topPetalPath addCurveToPoint: CGPointMake(106.15, 113.75) controlPoint1: CGPointMake(106.79, 113.77) controlPoint2: CGPointMake(106.09, 113.89)];
        [topPetalPath closePath];
        topPetalPath.miterLimit = 4;
        
        [stemGreen setFill];
        [topPetalPath fill];
        
        
        //// middlePetal Drawing
        UIBezierPath* middlePetalPath = [UIBezierPath bezierPath];
        [middlePetalPath moveToPoint: CGPointMake(177.64, 320.64)];
        [middlePetalPath addCurveToPoint: CGPointMake(236.52, 286.08) controlPoint1: CGPointMake(197.61, 326.28) controlPoint2: CGPointMake(225.83, 317.39)];
        [middlePetalPath addCurveToPoint: CGPointMake(220.4, 221.31) controlPoint1: CGPointMake(244.76, 261.96) controlPoint2: CGPointMake(237.53, 232.9)];
        [middlePetalPath addCurveToPoint: CGPointMake(185.08, 238.73) controlPoint1: CGPointMake(207.25, 212.4) controlPoint2: CGPointMake(191.41, 220.22)];
        [middlePetalPath addCurveToPoint: CGPointMake(184.15, 260.13) controlPoint1: CGPointMake(182.78, 245.47) controlPoint2: CGPointMake(182.45, 253.06)];
        [middlePetalPath addCurveToPoint: CGPointMake(184.22, 260.46) controlPoint1: CGPointMake(184.17, 260.24) controlPoint2: CGPointMake(184.2, 260.35)];
        [middlePetalPath addCurveToPoint: CGPointMake(194.53, 276.67) controlPoint1: CGPointMake(186.01, 267.62) controlPoint2: CGPointMake(189.67, 273.38)];
        [middlePetalPath addCurveToPoint: CGPointMake(214.96, 266.59) controlPoint1: CGPointMake(202.14, 281.82) controlPoint2: CGPointMake(211.3, 277.3)];
        [middlePetalPath addCurveToPoint: CGPointMake(209.58, 245.01) controlPoint1: CGPointMake(217.7, 258.56) controlPoint2: CGPointMake(215.29, 248.87)];
        [middlePetalPath addCurveToPoint: CGPointMake(203.08, 244.5) controlPoint1: CGPointMake(207.54, 243.62) controlPoint2: CGPointMake(205.23, 243.44)];
        [middlePetalPath addCurveToPoint: CGPointMake(198.23, 250.61) controlPoint1: CGPointMake(200.94, 245.56) controlPoint2: CGPointMake(199.21, 247.73)];
        [middlePetalPath addCurveToPoint: CGPointMake(201.12, 262.22) controlPoint1: CGPointMake(196.75, 254.93) controlPoint2: CGPointMake(198.05, 260.14)];
        [middlePetalPath addCurveToPoint: CGPointMake(206.95, 259.35) controlPoint1: CGPointMake(203.29, 263.69) controlPoint2: CGPointMake(205.9, 262.4)];
        [middlePetalPath addCurveToPoint: CGPointMake(199.29, 267.57) controlPoint1: CGPointMake(208.66, 266.68) controlPoint2: CGPointMake(203.55, 270.45)];
        [middlePetalPath addCurveToPoint: CGPointMake(194.43, 248.04) controlPoint1: CGPointMake(194.13, 264.07) controlPoint2: CGPointMake(191.95, 255.31)];
        [middlePetalPath addCurveToPoint: CGPointMake(201.69, 238.9) controlPoint1: CGPointMake(195.9, 243.73) controlPoint2: CGPointMake(198.48, 240.49)];
        [middlePetalPath addCurveToPoint: CGPointMake(211.41, 239.66) controlPoint1: CGPointMake(204.89, 237.32) controlPoint2: CGPointMake(208.35, 237.59)];
        [middlePetalPath addCurveToPoint: CGPointMake(218.76, 269.17) controlPoint1: CGPointMake(219.21, 244.94) controlPoint2: CGPointMake(222.51, 258.18)];
        [middlePetalPath addCurveToPoint: CGPointMake(192.71, 282.01) controlPoint1: CGPointMake(214.09, 282.82) controlPoint2: CGPointMake(202.41, 288.58)];
        [middlePetalPath addCurveToPoint: CGPointMake(180.25, 262.42) controlPoint1: CGPointMake(186.83, 278.04) controlPoint2: CGPointMake(182.41, 271.08)];
        [middlePetalPath addCurveToPoint: CGPointMake(181.29, 236.16) controlPoint1: CGPointMake(178.09, 253.74) controlPoint2: CGPointMake(178.46, 244.43)];
        [middlePetalPath addCurveToPoint: CGPointMake(222.22, 215.96) controlPoint1: CGPointMake(188.62, 214.7) controlPoint2: CGPointMake(206.98, 205.64)];
        [middlePetalPath addCurveToPoint: CGPointMake(240.32, 288.65) controlPoint1: CGPointMake(241.45, 228.98) controlPoint2: CGPointMake(249.57, 261.59)];
        [middlePetalPath addCurveToPoint: CGPointMake(178.17, 322.87) controlPoint1: CGPointMake(229.13, 321.42) controlPoint2: CGPointMake(201.82, 336.08)];
        [middlePetalPath addLineToPoint: CGPointMake(177.84, 321.5)];
        [middlePetalPath addCurveToPoint: CGPointMake(177.64, 320.64) controlPoint1: CGPointMake(177.96, 321.97) controlPoint2: CGPointMake(177.47, 320.6)];
        [middlePetalPath closePath];
        middlePetalPath.miterLimit = 4;
        
        [stemGreen setFill];
        [middlePetalPath fill];
        
        
        
        
        //// leftFlower
        {
            //// Group 6
            {
                //// Bezier 19 Drawing
                UIBezierPath* bezier19Path = [UIBezierPath bezierPath];
                [bezier19Path moveToPoint: CGPointMake(28.41, 204.17)];
                [bezier19Path addCurveToPoint: CGPointMake(25.74, 186.34) controlPoint1: CGPointMake(28.01, 200.15) controlPoint2: CGPointMake(27.05, 192.53)];
                [bezier19Path addCurveToPoint: CGPointMake(23.68, 187.44) controlPoint1: CGPointMake(24.86, 187.01) controlPoint2: CGPointMake(24.13, 187.32)];
                [bezier19Path addCurveToPoint: CGPointMake(18.99, 185.25) controlPoint1: CGPointMake(21.69, 188.02) controlPoint2: CGPointMake(19.89, 187.18)];
                [bezier19Path addCurveToPoint: CGPointMake(19.32, 178.57) controlPoint1: CGPointMake(18.14, 183.44) controlPoint2: CGPointMake(18.26, 181)];
                [bezier19Path addCurveToPoint: CGPointMake(22.12, 175.93) controlPoint1: CGPointMake(20.22, 176.52) controlPoint2: CGPointMake(21.16, 175.63)];
                [bezier19Path addCurveToPoint: CGPointMake(26.11, 184.98) controlPoint1: CGPointMake(23.7, 176.42) controlPoint2: CGPointMake(25.04, 180.27)];
                [bezier19Path addCurveToPoint: CGPointMake(32.66, 168.05) controlPoint1: CGPointMake(28.32, 182.91) controlPoint2: CGPointMake(31.18, 178.31)];
                [bezier19Path addLineToPoint: CGPointMake(33.27, 168.24)];
                [bezier19Path addCurveToPoint: CGPointMake(26.31, 185.87) controlPoint1: CGPointMake(31.72, 178.97) controlPoint2: CGPointMake(28.65, 183.75)];
                [bezier19Path addCurveToPoint: CGPointMake(29.02, 204.04) controlPoint1: CGPointMake(27.91, 193.29) controlPoint2: CGPointMake(28.86, 202.42)];
                [bezier19Path addLineToPoint: CGPointMake(28.41, 204.17)];
                [bezier19Path addLineToPoint: CGPointMake(28.41, 204.17)];
                [bezier19Path closePath];
                [bezier19Path moveToPoint: CGPointMake(25.55, 185.46)];
                [bezier19Path addCurveToPoint: CGPointMake(21.99, 176.82) controlPoint1: CGPointMake(24.53, 180.86) controlPoint2: CGPointMake(23.31, 177.24)];
                [bezier19Path addCurveToPoint: CGPointMake(19.85, 179.06) controlPoint1: CGPointMake(21.31, 176.61) controlPoint2: CGPointMake(20.59, 177.36)];
                [bezier19Path addCurveToPoint: CGPointMake(19.5, 184.74) controlPoint1: CGPointMake(18.93, 181.17) controlPoint2: CGPointMake(18.8, 183.24)];
                [bezier19Path addCurveToPoint: CGPointMake(23.56, 186.55) controlPoint1: CGPointMake(20.26, 186.36) controlPoint2: CGPointMake(21.82, 187.06)];
                [bezier19Path addCurveToPoint: CGPointMake(25.55, 185.46) controlPoint1: CGPointMake(23.99, 186.42) controlPoint2: CGPointMake(24.7, 186.13)];
                [bezier19Path addLineToPoint: CGPointMake(25.55, 185.46)];
                [bezier19Path closePath];
                bezier19Path.miterLimit = 4;
                
                [stemGreen setFill];
                [bezier19Path fill];
            }
            
            
            //// Bezier 20 Drawing
            UIBezierPath* bezier20Path = [UIBezierPath bezierPath];
            [bezier20Path moveToPoint: CGPointMake(29.71, 157.01)];
            [bezier20Path addCurveToPoint: CGPointMake(27.99, 162.47) controlPoint1: CGPointMake(28.4, 158.73) controlPoint2: CGPointMake(27.74, 160.65)];
            [bezier20Path addCurveToPoint: CGPointMake(31.02, 166.59) controlPoint1: CGPointMake(28.24, 164.29) controlPoint2: CGPointMake(29.36, 165.71)];
            [bezier20Path addCurveToPoint: CGPointMake(32.49, 172.2) controlPoint1: CGPointMake(30.94, 169.13) controlPoint2: CGPointMake(31.42, 171.16)];
            [bezier20Path addCurveToPoint: CGPointMake(36.67, 172.03) controlPoint1: CGPointMake(33.57, 173.23) controlPoint2: CGPointMake(35.05, 173.1)];
            [bezier20Path addCurveToPoint: CGPointMake(40.47, 174.5) controlPoint1: CGPointMake(37.86, 173.9) controlPoint2: CGPointMake(39.2, 174.86)];
            [bezier20Path addCurveToPoint: CGPointMake(43.34, 170.14) controlPoint1: CGPointMake(41.74, 174.14) controlPoint2: CGPointMake(42.72, 172.53)];
            [bezier20Path addCurveToPoint: CGPointMake(47.24, 168.03) controlPoint1: CGPointMake(45.11, 170.25) controlPoint2: CGPointMake(46.52, 169.57)];
            [bezier20Path addCurveToPoint: CGPointMake(47.13, 162.04) controlPoint1: CGPointMake(47.96, 166.49) controlPoint2: CGPointMake(47.86, 164.35)];
            [bezier20Path addCurveToPoint: CGPointMake(48.84, 156.58) controlPoint1: CGPointMake(48.43, 160.32) controlPoint2: CGPointMake(49.09, 158.4)];
            [bezier20Path addCurveToPoint: CGPointMake(45.81, 152.46) controlPoint1: CGPointMake(48.59, 154.76) controlPoint2: CGPointMake(47.47, 153.34)];
            [bezier20Path addCurveToPoint: CGPointMake(44.34, 146.85) controlPoint1: CGPointMake(45.88, 149.92) controlPoint2: CGPointMake(45.41, 147.89)];
            [bezier20Path addCurveToPoint: CGPointMake(40.16, 147.02) controlPoint1: CGPointMake(43.26, 145.82) controlPoint2: CGPointMake(41.77, 145.96)];
            [bezier20Path addCurveToPoint: CGPointMake(36.36, 144.55) controlPoint1: CGPointMake(38.97, 145.15) controlPoint2: CGPointMake(37.63, 144.19)];
            [bezier20Path addCurveToPoint: CGPointMake(33.49, 148.91) controlPoint1: CGPointMake(35.09, 144.91) controlPoint2: CGPointMake(34.11, 146.52)];
            [bezier20Path addCurveToPoint: CGPointMake(29.59, 151.02) controlPoint1: CGPointMake(31.72, 148.8) controlPoint2: CGPointMake(30.31, 149.49)];
            [bezier20Path addCurveToPoint: CGPointMake(29.71, 157.01) controlPoint1: CGPointMake(28.87, 152.56) controlPoint2: CGPointMake(28.97, 154.7)];
            [bezier20Path closePath];
            [bezier20Path moveToPoint: CGPointMake(32.31, 153.65)];
            [bezier20Path addCurveToPoint: CGPointMake(35.01, 152.18) controlPoint1: CGPointMake(32.81, 152.58) controlPoint2: CGPointMake(33.79, 152.11)];
            [bezier20Path addCurveToPoint: CGPointMake(37, 149.18) controlPoint1: CGPointMake(35.44, 150.53) controlPoint2: CGPointMake(36.12, 149.42)];
            [bezier20Path addCurveToPoint: CGPointMake(39.62, 150.88) controlPoint1: CGPointMake(37.87, 148.93) controlPoint2: CGPointMake(38.8, 149.58)];
            [bezier20Path addCurveToPoint: CGPointMake(42.51, 150.77) controlPoint1: CGPointMake(40.74, 150.14) controlPoint2: CGPointMake(41.77, 150.05)];
            [bezier20Path addCurveToPoint: CGPointMake(43.53, 154.64) controlPoint1: CGPointMake(43.25, 151.48) controlPoint2: CGPointMake(43.58, 152.88)];
            [bezier20Path addCurveToPoint: CGPointMake(45.62, 157.49) controlPoint1: CGPointMake(44.68, 155.25) controlPoint2: CGPointMake(45.45, 156.23)];
            [bezier20Path addCurveToPoint: CGPointMake(44.44, 161.26) controlPoint1: CGPointMake(45.8, 158.74) controlPoint2: CGPointMake(45.34, 160.07)];
            [bezier20Path addCurveToPoint: CGPointMake(44.52, 165.4) controlPoint1: CGPointMake(44.95, 162.86) controlPoint2: CGPointMake(45.01, 164.34)];
            [bezier20Path addCurveToPoint: CGPointMake(41.82, 166.87) controlPoint1: CGPointMake(44.02, 166.47) controlPoint2: CGPointMake(43.04, 166.94)];
            [bezier20Path addCurveToPoint: CGPointMake(39.83, 169.87) controlPoint1: CGPointMake(41.39, 168.52) controlPoint2: CGPointMake(40.71, 169.63)];
            [bezier20Path addCurveToPoint: CGPointMake(37.21, 168.17) controlPoint1: CGPointMake(38.96, 170.12) controlPoint2: CGPointMake(38.04, 169.46)];
            [bezier20Path addCurveToPoint: CGPointMake(34.32, 168.28) controlPoint1: CGPointMake(36.09, 168.9) controlPoint2: CGPointMake(35.06, 169)];
            [bezier20Path addCurveToPoint: CGPointMake(33.3, 164.41) controlPoint1: CGPointMake(33.58, 167.57) controlPoint2: CGPointMake(33.25, 166.17)];
            [bezier20Path addCurveToPoint: CGPointMake(31.21, 161.56) controlPoint1: CGPointMake(32.15, 163.8) controlPoint2: CGPointMake(31.38, 162.82)];
            [bezier20Path addCurveToPoint: CGPointMake(32.39, 157.79) controlPoint1: CGPointMake(31.03, 160.3) controlPoint2: CGPointMake(31.49, 158.98)];
            [bezier20Path addCurveToPoint: CGPointMake(32.31, 153.65) controlPoint1: CGPointMake(31.88, 156.19) controlPoint2: CGPointMake(31.82, 154.71)];
            [bezier20Path closePath];
            bezier20Path.miterLimit = 4;
            
            [stemGreen setFill];
            [bezier20Path fill];
            
            
            //// leftFlowerStigma Drawing
            UIBezierPath* leftFlowerStigmaPath = [UIBezierPath bezierPath];
            [leftFlowerStigmaPath moveToPoint: CGPointMake(41.74, 158.94)];
            [leftFlowerStigmaPath addCurveToPoint: CGPointMake(40.94, 157.47) controlPoint1: CGPointMake(41.74, 158.38) controlPoint2: CGPointMake(41.44, 157.87)];
            [leftFlowerStigmaPath addCurveToPoint: CGPointMake(40.77, 155.63) controlPoint1: CGPointMake(41.09, 156.7) controlPoint2: CGPointMake(41.05, 156.03)];
            [leftFlowerStigmaPath addCurveToPoint: CGPointMake(39.46, 155.39) controlPoint1: CGPointMake(40.48, 155.24) controlPoint2: CGPointMake(40.01, 155.17)];
            [leftFlowerStigmaPath addCurveToPoint: CGPointMake(38.42, 154.26) controlPoint1: CGPointMake(39.18, 154.69) controlPoint2: CGPointMake(38.82, 154.26)];
            [leftFlowerStigmaPath addCurveToPoint: CGPointMake(37.37, 155.39) controlPoint1: CGPointMake(38.01, 154.26) controlPoint2: CGPointMake(37.65, 154.69)];
            [leftFlowerStigmaPath addCurveToPoint: CGPointMake(36.06, 155.63) controlPoint1: CGPointMake(36.82, 155.17) controlPoint2: CGPointMake(36.34, 155.24)];
            [leftFlowerStigmaPath addCurveToPoint: CGPointMake(35.89, 157.47) controlPoint1: CGPointMake(35.78, 156.03) controlPoint2: CGPointMake(35.74, 156.7)];
            [leftFlowerStigmaPath addCurveToPoint: CGPointMake(35.09, 158.94) controlPoint1: CGPointMake(35.39, 157.87) controlPoint2: CGPointMake(35.09, 158.38)];
            [leftFlowerStigmaPath addCurveToPoint: CGPointMake(35.89, 160.42) controlPoint1: CGPointMake(35.09, 159.51) controlPoint2: CGPointMake(35.39, 160.02)];
            [leftFlowerStigmaPath addCurveToPoint: CGPointMake(36.06, 162.26) controlPoint1: CGPointMake(35.74, 161.19) controlPoint2: CGPointMake(35.78, 161.86)];
            [leftFlowerStigmaPath addCurveToPoint: CGPointMake(37.37, 162.5) controlPoint1: CGPointMake(36.34, 162.65) controlPoint2: CGPointMake(36.82, 162.72)];
            [leftFlowerStigmaPath addCurveToPoint: CGPointMake(38.42, 163.63) controlPoint1: CGPointMake(37.65, 163.2) controlPoint2: CGPointMake(38.01, 163.63)];
            [leftFlowerStigmaPath addCurveToPoint: CGPointMake(39.46, 162.5) controlPoint1: CGPointMake(38.82, 163.63) controlPoint2: CGPointMake(39.18, 163.2)];
            [leftFlowerStigmaPath addCurveToPoint: CGPointMake(40.77, 162.26) controlPoint1: CGPointMake(40.01, 162.72) controlPoint2: CGPointMake(40.48, 162.65)];
            [leftFlowerStigmaPath addCurveToPoint: CGPointMake(40.94, 160.42) controlPoint1: CGPointMake(41.05, 161.86) controlPoint2: CGPointMake(41.09, 161.19)];
            [leftFlowerStigmaPath addCurveToPoint: CGPointMake(41.74, 158.94) controlPoint1: CGPointMake(41.44, 160.02) controlPoint2: CGPointMake(41.74, 159.51)];
            [leftFlowerStigmaPath closePath];
            leftFlowerStigmaPath.miterLimit = 4;
            
            [stemGreen setFill];
            [leftFlowerStigmaPath fill];
        }
        
        
        //// rightFlower
        {
            //// Group 8
            {
                //// Bezier 21 Drawing
                UIBezierPath* bezier21Path = [UIBezierPath bezierPath];
                [bezier21Path moveToPoint: CGPointMake(270.58, 408.32)];
                [bezier21Path addCurveToPoint: CGPointMake(278.55, 394.72) controlPoint1: CGPointMake(272.51, 405.47) controlPoint2: CGPointMake(276.05, 399.84)];
                [bezier21Path addCurveToPoint: CGPointMake(276.56, 393.24) controlPoint1: CGPointMake(277.59, 394.21) controlPoint2: CGPointMake(276.93, 393.62)];
                [bezier21Path addCurveToPoint: CGPointMake(274.58, 386.99) controlPoint1: CGPointMake(274.89, 391.5) controlPoint2: CGPointMake(274.13, 389.1)];
                [bezier21Path addCurveToPoint: CGPointMake(278.47, 383.29) controlPoint1: CGPointMake(275, 385) controlPoint2: CGPointMake(276.42, 383.65)];
                [bezier21Path addCurveToPoint: CGPointMake(281.82, 384.63) controlPoint1: CGPointMake(280.21, 382.98) controlPoint2: CGPointMake(281.33, 383.43)];
                [bezier21Path addCurveToPoint: CGPointMake(279.56, 394.29) controlPoint1: CGPointMake(282.62, 386.59) controlPoint2: CGPointMake(281.42, 390.32)];
                [bezier21Path addCurveToPoint: CGPointMake(293.28, 390.89) controlPoint1: CGPointMake(282.18, 395.35) controlPoint2: CGPointMake(286.65, 395.56)];
                [bezier21Path addLineToPoint: CGPointMake(293.59, 391.64)];
                [bezier21Path addCurveToPoint: CGPointMake(279.21, 395.03) controlPoint1: CGPointMake(286.65, 396.53) controlPoint2: CGPointMake(281.95, 396.2)];
                [bezier21Path addCurveToPoint: CGPointMake(271.07, 408.89) controlPoint1: CGPointMake(276.21, 401.21) controlPoint2: CGPointMake(271.85, 407.73)];
                [bezier21Path addLineToPoint: CGPointMake(270.58, 408.32)];
                [bezier21Path addLineToPoint: CGPointMake(270.58, 408.32)];
                [bezier21Path closePath];
                [bezier21Path moveToPoint: CGPointMake(278.91, 393.99)];
                [bezier21Path addCurveToPoint: CGPointMake(281.24, 385.03) controlPoint1: CGPointMake(280.74, 390.13) controlPoint2: CGPointMake(281.91, 386.66)];
                [bezier21Path addCurveToPoint: CGPointMake(278.56, 384.13) controlPoint1: CGPointMake(280.9, 384.18) controlPoint2: CGPointMake(279.99, 383.88)];
                [bezier21Path addCurveToPoint: CGPointMake(275.21, 387.21) controlPoint1: CGPointMake(276.78, 384.45) controlPoint2: CGPointMake(275.56, 385.57)];
                [bezier21Path addCurveToPoint: CGPointMake(276.96, 392.56) controlPoint1: CGPointMake(274.83, 389) controlPoint2: CGPointMake(275.5, 391.05)];
                [bezier21Path addCurveToPoint: CGPointMake(278.91, 393.99) controlPoint1: CGPointMake(277.32, 392.94) controlPoint2: CGPointMake(277.96, 393.51)];
                [bezier21Path addLineToPoint: CGPointMake(278.91, 393.99)];
                [bezier21Path closePath];
                bezier21Path.miterLimit = 4;
                
                [stemGreen setFill];
                [bezier21Path fill];
            }
            
            
            //// Bezier 22 Drawing
            UIBezierPath* bezier22Path = [UIBezierPath bezierPath];
            [bezier22Path moveToPoint: CGPointMake(296.88, 380.04)];
            [bezier22Path addCurveToPoint: CGPointMake(292.81, 381.64) controlPoint1: CGPointMake(295.1, 379.73) controlPoint2: CGPointMake(293.62, 380.23)];
            [bezier22Path addCurveToPoint: CGPointMake(292.57, 387.45) controlPoint1: CGPointMake(291.98, 383.04) controlPoint2: CGPointMake(291.96, 385.12)];
            [bezier22Path addCurveToPoint: CGPointMake(290.5, 392.53) controlPoint1: CGPointMake(291.14, 388.96) controlPoint2: CGPointMake(290.36, 390.74)];
            [bezier22Path addCurveToPoint: CGPointMake(293.33, 396.87) controlPoint1: CGPointMake(290.65, 394.32) controlPoint2: CGPointMake(291.7, 395.82)];
            [bezier22Path addCurveToPoint: CGPointMake(294.49, 402.46) controlPoint1: CGPointMake(293.1, 399.32) controlPoint2: CGPointMake(293.46, 401.34)];
            [bezier22Path addCurveToPoint: CGPointMake(298.72, 402.79) controlPoint1: CGPointMake(295.51, 403.59) controlPoint2: CGPointMake(297.03, 403.63)];
            [bezier22Path addCurveToPoint: CGPointMake(302.43, 405.62) controlPoint1: CGPointMake(299.82, 404.74) controlPoint2: CGPointMake(301.12, 405.82)];
            [bezier22Path addCurveToPoint: CGPointMake(305.59, 401.74) controlPoint1: CGPointMake(303.73, 405.42) controlPoint2: CGPointMake(304.83, 403.98)];
            [bezier22Path addCurveToPoint: CGPointMake(309.67, 400.15) controlPoint1: CGPointMake(307.38, 402.05) controlPoint2: CGPointMake(308.85, 401.56)];
            [bezier22Path addCurveToPoint: CGPointMake(309.91, 394.34) controlPoint1: CGPointMake(310.49, 398.75) controlPoint2: CGPointMake(310.52, 396.67)];
            [bezier22Path addCurveToPoint: CGPointMake(311.97, 389.26) controlPoint1: CGPointMake(311.33, 392.83) controlPoint2: CGPointMake(312.11, 391.05)];
            [bezier22Path addCurveToPoint: CGPointMake(309.15, 384.92) controlPoint1: CGPointMake(311.83, 387.47) controlPoint2: CGPointMake(310.78, 385.97)];
            [bezier22Path addCurveToPoint: CGPointMake(307.98, 379.32) controlPoint1: CGPointMake(309.37, 382.47) controlPoint2: CGPointMake(309.01, 380.45)];
            [bezier22Path addCurveToPoint: CGPointMake(303.75, 379) controlPoint1: CGPointMake(306.96, 378.2) controlPoint2: CGPointMake(305.44, 378.16)];
            [bezier22Path addCurveToPoint: CGPointMake(300.05, 376.17) controlPoint1: CGPointMake(302.65, 377.04) controlPoint2: CGPointMake(301.35, 375.97)];
            [bezier22Path addCurveToPoint: CGPointMake(296.88, 380.04) controlPoint1: CGPointMake(298.74, 376.37) controlPoint2: CGPointMake(297.65, 377.81)];
            [bezier22Path closePath];
            [bezier22Path moveToPoint: CGPointMake(300.41, 380.72)];
            [bezier22Path addCurveToPoint: CGPointMake(302.97, 382.67) controlPoint1: CGPointMake(301.31, 380.58) controlPoint2: CGPointMake(302.21, 381.32)];
            [bezier22Path addCurveToPoint: CGPointMake(305.9, 382.9) controlPoint1: CGPointMake(304.14, 382.09) controlPoint2: CGPointMake(305.19, 382.12)];
            [bezier22Path addCurveToPoint: CGPointMake(306.7, 386.77) controlPoint1: CGPointMake(306.61, 383.68) controlPoint2: CGPointMake(306.86, 385.07)];
            [bezier22Path addCurveToPoint: CGPointMake(308.66, 389.76) controlPoint1: CGPointMake(307.83, 387.49) controlPoint2: CGPointMake(308.55, 388.53)];
            [bezier22Path addCurveToPoint: CGPointMake(307.23, 393.28) controlPoint1: CGPointMake(308.75, 391) controlPoint2: CGPointMake(308.21, 392.23)];
            [bezier22Path addCurveToPoint: CGPointMake(307.06, 397.29) controlPoint1: CGPointMake(307.65, 394.88) controlPoint2: CGPointMake(307.63, 396.32)];
            [bezier22Path addCurveToPoint: CGPointMake(304.24, 398.39) controlPoint1: CGPointMake(306.5, 398.27) controlPoint2: CGPointMake(305.48, 398.61)];
            [bezier22Path addCurveToPoint: CGPointMake(302.06, 401.07) controlPoint1: CGPointMake(303.72, 399.94) controlPoint2: CGPointMake(302.96, 400.94)];
            [bezier22Path addCurveToPoint: CGPointMake(299.5, 399.12) controlPoint1: CGPointMake(301.16, 401.21) controlPoint2: CGPointMake(300.26, 400.47)];
            [bezier22Path addCurveToPoint: CGPointMake(296.57, 398.89) controlPoint1: CGPointMake(298.33, 399.69) controlPoint2: CGPointMake(297.28, 399.67)];
            [bezier22Path addCurveToPoint: CGPointMake(295.77, 395.02) controlPoint1: CGPointMake(295.87, 398.11) controlPoint2: CGPointMake(295.61, 396.72)];
            [bezier22Path addCurveToPoint: CGPointMake(293.82, 392.02) controlPoint1: CGPointMake(294.64, 394.3) controlPoint2: CGPointMake(293.92, 393.26)];
            [bezier22Path addCurveToPoint: CGPointMake(295.24, 388.51) controlPoint1: CGPointMake(293.72, 390.79) controlPoint2: CGPointMake(294.26, 389.56)];
            [bezier22Path addCurveToPoint: CGPointMake(295.41, 384.5) controlPoint1: CGPointMake(294.82, 386.91) controlPoint2: CGPointMake(294.84, 385.47)];
            [bezier22Path addCurveToPoint: CGPointMake(298.23, 383.39) controlPoint1: CGPointMake(295.97, 383.53) controlPoint2: CGPointMake(296.99, 383.18)];
            [bezier22Path addCurveToPoint: CGPointMake(300.41, 380.72) controlPoint1: CGPointMake(298.75, 381.85) controlPoint2: CGPointMake(299.51, 380.85)];
            [bezier22Path closePath];
            bezier22Path.miterLimit = 4;
            
            [stemGreen setFill];
            [bezier22Path fill];
            
            
            //// rightFlowerStigma Drawing
            UIBezierPath* rightFlowerStigmaPath = [UIBezierPath bezierPath];
            [rightFlowerStigmaPath moveToPoint: CGPointMake(304.5, 391)];
            [rightFlowerStigmaPath addCurveToPoint: CGPointMake(303.7, 389.52) controlPoint1: CGPointMake(304.5, 390.43) controlPoint2: CGPointMake(304.2, 389.92)];
            [rightFlowerStigmaPath addCurveToPoint: CGPointMake(303.53, 387.69) controlPoint1: CGPointMake(303.86, 388.75) controlPoint2: CGPointMake(303.81, 388.09)];
            [rightFlowerStigmaPath addCurveToPoint: CGPointMake(302.22, 387.44) controlPoint1: CGPointMake(303.25, 387.29) controlPoint2: CGPointMake(302.78, 387.23)];
            [rightFlowerStigmaPath addCurveToPoint: CGPointMake(301.18, 386.31) controlPoint1: CGPointMake(301.94, 386.74) controlPoint2: CGPointMake(301.58, 386.31)];
            [rightFlowerStigmaPath addCurveToPoint: CGPointMake(300.13, 387.44) controlPoint1: CGPointMake(300.78, 386.31) controlPoint2: CGPointMake(300.41, 386.74)];
            [rightFlowerStigmaPath addCurveToPoint: CGPointMake(298.83, 387.69) controlPoint1: CGPointMake(299.58, 387.23) controlPoint2: CGPointMake(299.11, 387.29)];
            [rightFlowerStigmaPath addCurveToPoint: CGPointMake(298.65, 389.52) controlPoint1: CGPointMake(298.54, 388.09) controlPoint2: CGPointMake(298.5, 388.75)];
            [rightFlowerStigmaPath addCurveToPoint: CGPointMake(297.85, 391) controlPoint1: CGPointMake(298.15, 389.92) controlPoint2: CGPointMake(297.85, 390.43)];
            [rightFlowerStigmaPath addCurveToPoint: CGPointMake(298.65, 392.47) controlPoint1: CGPointMake(297.85, 391.56) controlPoint2: CGPointMake(298.15, 392.07)];
            [rightFlowerStigmaPath addCurveToPoint: CGPointMake(298.83, 394.31) controlPoint1: CGPointMake(298.5, 393.25) controlPoint2: CGPointMake(298.54, 393.91)];
            [rightFlowerStigmaPath addCurveToPoint: CGPointMake(300.13, 394.55) controlPoint1: CGPointMake(299.11, 394.71) controlPoint2: CGPointMake(299.58, 394.77)];
            [rightFlowerStigmaPath addCurveToPoint: CGPointMake(301.18, 395.68) controlPoint1: CGPointMake(300.41, 395.25) controlPoint2: CGPointMake(300.78, 395.68)];
            [rightFlowerStigmaPath addCurveToPoint: CGPointMake(302.22, 394.55) controlPoint1: CGPointMake(301.58, 395.68) controlPoint2: CGPointMake(301.94, 395.25)];
            [rightFlowerStigmaPath addCurveToPoint: CGPointMake(303.53, 394.31) controlPoint1: CGPointMake(302.78, 394.77) controlPoint2: CGPointMake(303.25, 394.71)];
            [rightFlowerStigmaPath addCurveToPoint: CGPointMake(303.7, 392.47) controlPoint1: CGPointMake(303.81, 393.91) controlPoint2: CGPointMake(303.86, 393.25)];
            [rightFlowerStigmaPath addCurveToPoint: CGPointMake(304.5, 391) controlPoint1: CGPointMake(304.2, 392.07) controlPoint2: CGPointMake(304.5, 391.56)];
            [rightFlowerStigmaPath closePath];
            rightFlowerStigmaPath.miterLimit = 4;
            
            [stemGreen setFill];
            [rightFlowerStigmaPath fill];
        }
        
        
        //// bottomFlower
        {
            //// Group 10
            {
                //// Bezier 23 Drawing
                UIBezierPath* bezier23Path = [UIBezierPath bezierPath];
                [bezier23Path moveToPoint: CGPointMake(112.89, 502.55)];
                [bezier23Path addCurveToPoint: CGPointMake(99.98, 504.16) controlPoint1: CGPointMake(110, 502.62) controlPoint2: CGPointMake(104.51, 503.05)];
                [bezier23Path addCurveToPoint: CGPointMake(100.49, 507.27) controlPoint1: CGPointMake(100.34, 505.52) controlPoint2: CGPointMake(100.46, 506.61)];
                [bezier23Path addCurveToPoint: CGPointMake(98.33, 513.79) controlPoint1: CGPointMake(100.63, 510.23) controlPoint2: CGPointMake(99.81, 512.73)];
                [bezier23Path addCurveToPoint: CGPointMake(93.67, 512.46) controlPoint1: CGPointMake(96.94, 514.79) controlPoint2: CGPointMake(95.24, 514.31)];
                [bezier23Path addCurveToPoint: CGPointMake(92.18, 508.08) controlPoint1: CGPointMake(92.34, 510.91) controlPoint2: CGPointMake(91.84, 509.43)];
                [bezier23Path addCurveToPoint: CGPointMake(99.07, 503.44) controlPoint1: CGPointMake(92.73, 505.85) controlPoint2: CGPointMake(95.61, 504.4)];
                [bezier23Path addCurveToPoint: CGPointMake(88.01, 491.85) controlPoint1: CGPointMake(97.91, 500) controlPoint2: CGPointMake(95.04, 495.28)];
                [bezier23Path addLineToPoint: CGPointMake(88.22, 490.99)];
                [bezier23Path addCurveToPoint: CGPointMake(99.72, 503.27) controlPoint1: CGPointMake(95.58, 494.58) controlPoint2: CGPointMake(98.54, 499.61)];
                [bezier23Path addCurveToPoint: CGPointMake(112.88, 501.64) controlPoint1: CGPointMake(105.16, 501.89) controlPoint2: CGPointMake(111.71, 501.67)];
                [bezier23Path addLineToPoint: CGPointMake(112.89, 502.55)];
                [bezier23Path addLineToPoint: CGPointMake(112.89, 502.55)];
                [bezier23Path closePath];
                [bezier23Path moveToPoint: CGPointMake(99.34, 504.33)];
                [bezier23Path addCurveToPoint: CGPointMake(92.79, 508.38) controlPoint1: CGPointMake(95.96, 505.22) controlPoint2: CGPointMake(93.25, 506.53)];
                [bezier23Path addCurveToPoint: CGPointMake(94.09, 511.77) controlPoint1: CGPointMake(92.55, 509.34) controlPoint2: CGPointMake(92.98, 510.48)];
                [bezier23Path addCurveToPoint: CGPointMake(98.04, 512.98) controlPoint1: CGPointMake(95.45, 513.37) controlPoint2: CGPointMake(96.89, 513.81)];
                [bezier23Path addCurveToPoint: CGPointMake(99.84, 507.34) controlPoint1: CGPointMake(99.28, 512.09) controlPoint2: CGPointMake(99.97, 509.93)];
                [bezier23Path addCurveToPoint: CGPointMake(99.34, 504.33) controlPoint1: CGPointMake(99.81, 506.7) controlPoint2: CGPointMake(99.7, 505.64)];
                [bezier23Path addLineToPoint: CGPointMake(99.34, 504.33)];
                [bezier23Path closePath];
                bezier23Path.miterLimit = 4;
                
                [stemGreen setFill];
                [bezier23Path fill];
            }
            
            
            //// Bezier 24 Drawing
            UIBezierPath* bezier24Path = [UIBezierPath bezierPath];
            [bezier24Path moveToPoint: CGPointMake(79.15, 494.86)];
            [bezier24Path addCurveToPoint: CGPointMake(82.85, 498.01) controlPoint1: CGPointMake(80.21, 496.95) controlPoint2: CGPointMake(81.51, 498.14)];
            [bezier24Path addCurveToPoint: CGPointMake(86.21, 494.2) controlPoint1: CGPointMake(84.19, 497.89) controlPoint2: CGPointMake(85.35, 496.47)];
            [bezier24Path addCurveToPoint: CGPointMake(90.43, 492.8) controlPoint1: CGPointMake(88.02, 494.63) controlPoint2: CGPointMake(89.54, 494.2)];
            [bezier24Path addCurveToPoint: CGPointMake(90.86, 486.81) controlPoint1: CGPointMake(91.31, 491.4) controlPoint2: CGPointMake(91.41, 489.25)];
            [bezier24Path addCurveToPoint: CGPointMake(93.13, 481.69) controlPoint1: CGPointMake(92.36, 485.34) controlPoint2: CGPointMake(93.22, 483.55)];
            [bezier24Path addCurveToPoint: CGPointMake(90.37, 477.04) controlPoint1: CGPointMake(93.04, 479.83) controlPoint2: CGPointMake(92.01, 478.22)];
            [bezier24Path addCurveToPoint: CGPointMake(89.37, 471.19) controlPoint1: CGPointMake(90.69, 474.52) controlPoint2: CGPointMake(90.38, 472.41)];
            [bezier24Path addCurveToPoint: CGPointMake(85.05, 470.59) controlPoint1: CGPointMake(88.36, 469.96) controlPoint2: CGPointMake(86.81, 469.83)];
            [bezier24Path addCurveToPoint: CGPointMake(81.35, 467.44) controlPoint1: CGPointMake(83.98, 468.5) controlPoint2: CGPointMake(82.69, 467.32)];
            [bezier24Path addCurveToPoint: CGPointMake(77.99, 471.25) controlPoint1: CGPointMake(80.01, 467.56) controlPoint2: CGPointMake(78.84, 468.99)];
            [bezier24Path addCurveToPoint: CGPointMake(73.77, 472.65) controlPoint1: CGPointMake(76.17, 470.83) controlPoint2: CGPointMake(74.65, 471.25)];
            [bezier24Path addCurveToPoint: CGPointMake(73.34, 478.64) controlPoint1: CGPointMake(72.89, 474.05) controlPoint2: CGPointMake(72.79, 476.2)];
            [bezier24Path addCurveToPoint: CGPointMake(71.07, 483.76) controlPoint1: CGPointMake(71.83, 480.12) controlPoint2: CGPointMake(70.97, 481.91)];
            [bezier24Path addCurveToPoint: CGPointMake(73.82, 488.42) controlPoint1: CGPointMake(71.16, 485.62) controlPoint2: CGPointMake(72.18, 487.24)];
            [bezier24Path addCurveToPoint: CGPointMake(74.83, 494.27) controlPoint1: CGPointMake(73.51, 490.94) controlPoint2: CGPointMake(73.82, 493.05)];
            [bezier24Path addCurveToPoint: CGPointMake(79.15, 494.86) controlPoint1: CGPointMake(75.84, 495.49) controlPoint2: CGPointMake(77.39, 495.63)];
            [bezier24Path closePath];
            [bezier24Path moveToPoint: CGPointMake(77.07, 490.7)];
            [bezier24Path addCurveToPoint: CGPointMake(76.38, 486.66) controlPoint1: CGPointMake(76.37, 489.86) controlPoint2: CGPointMake(76.16, 488.4)];
            [bezier24Path addCurveToPoint: CGPointMake(74.47, 483.44) controlPoint1: CGPointMake(75.25, 485.85) controlPoint2: CGPointMake(74.54, 484.73)];
            [bezier24Path addCurveToPoint: CGPointMake(76.04, 479.9) controlPoint1: CGPointMake(74.41, 482.16) controlPoint2: CGPointMake(75, 480.92)];
            [bezier24Path addCurveToPoint: CGPointMake(76.34, 475.76) controlPoint1: CGPointMake(75.66, 478.22) controlPoint2: CGPointMake(75.73, 476.73)];
            [bezier24Path addCurveToPoint: CGPointMake(79.26, 474.8) controlPoint1: CGPointMake(76.95, 474.79) controlPoint2: CGPointMake(78, 474.5)];
            [bezier24Path addCurveToPoint: CGPointMake(81.58, 472.16) controlPoint1: CGPointMake(79.85, 473.23) controlPoint2: CGPointMake(80.65, 472.25)];
            [bezier24Path addCurveToPoint: CGPointMake(84.14, 474.34) controlPoint1: CGPointMake(82.51, 472.07) controlPoint2: CGPointMake(83.4, 472.89)];
            [bezier24Path addCurveToPoint: CGPointMake(87.12, 474.75) controlPoint1: CGPointMake(85.35, 473.81) controlPoint2: CGPointMake(86.42, 473.9)];
            [bezier24Path addCurveToPoint: CGPointMake(87.82, 478.79) controlPoint1: CGPointMake(87.82, 475.59) controlPoint2: CGPointMake(88.04, 477.05)];
            [bezier24Path addCurveToPoint: CGPointMake(89.72, 482.01) controlPoint1: CGPointMake(88.95, 479.61) controlPoint2: CGPointMake(89.66, 480.73)];
            [bezier24Path addCurveToPoint: CGPointMake(88.15, 485.55) controlPoint1: CGPointMake(89.78, 483.29) controlPoint2: CGPointMake(89.19, 484.53)];
            [bezier24Path addCurveToPoint: CGPointMake(87.86, 489.69) controlPoint1: CGPointMake(88.53, 487.24) controlPoint2: CGPointMake(88.47, 488.72)];
            [bezier24Path addCurveToPoint: CGPointMake(84.94, 490.66) controlPoint1: CGPointMake(87.25, 490.66) controlPoint2: CGPointMake(86.19, 490.95)];
            [bezier24Path addCurveToPoint: CGPointMake(82.62, 493.29) controlPoint1: CGPointMake(84.35, 492.22) controlPoint2: CGPointMake(83.54, 493.2)];
            [bezier24Path addCurveToPoint: CGPointMake(80.06, 491.11) controlPoint1: CGPointMake(81.69, 493.38) controlPoint2: CGPointMake(80.8, 492.56)];
            [bezier24Path addCurveToPoint: CGPointMake(77.07, 490.7) controlPoint1: CGPointMake(78.84, 491.65) controlPoint2: CGPointMake(77.77, 491.55)];
            [bezier24Path closePath];
            bezier24Path.miterLimit = 4;
            
            [stemGreen setFill];
            [bezier24Path fill];
            
            
            //// bottomFlowerStigma Drawing
            UIBezierPath* bottomFlowerStigmaPath = [UIBezierPath bezierPath];
            [bottomFlowerStigmaPath moveToPoint: CGPointMake(85.56, 482.77)];
            [bottomFlowerStigmaPath addCurveToPoint: CGPointMake(84.76, 481.3) controlPoint1: CGPointMake(85.56, 482.21) controlPoint2: CGPointMake(85.25, 481.69)];
            [bottomFlowerStigmaPath addCurveToPoint: CGPointMake(84.58, 479.46) controlPoint1: CGPointMake(84.91, 480.52) controlPoint2: CGPointMake(84.86, 479.86)];
            [bottomFlowerStigmaPath addCurveToPoint: CGPointMake(83.28, 479.21) controlPoint1: CGPointMake(84.3, 479.06) controlPoint2: CGPointMake(83.83, 479)];
            [bottomFlowerStigmaPath addCurveToPoint: CGPointMake(82.23, 478.09) controlPoint1: CGPointMake(82.99, 478.51) controlPoint2: CGPointMake(82.63, 478.09)];
            [bottomFlowerStigmaPath addCurveToPoint: CGPointMake(81.18, 479.21) controlPoint1: CGPointMake(81.83, 478.09) controlPoint2: CGPointMake(81.47, 478.51)];
            [bottomFlowerStigmaPath addCurveToPoint: CGPointMake(79.88, 479.46) controlPoint1: CGPointMake(80.63, 479) controlPoint2: CGPointMake(80.16, 479.06)];
            [bottomFlowerStigmaPath addCurveToPoint: CGPointMake(79.71, 481.3) controlPoint1: CGPointMake(79.59, 479.86) controlPoint2: CGPointMake(79.55, 480.52)];
            [bottomFlowerStigmaPath addCurveToPoint: CGPointMake(78.9, 482.77) controlPoint1: CGPointMake(79.21, 481.69) controlPoint2: CGPointMake(78.9, 482.21)];
            [bottomFlowerStigmaPath addCurveToPoint: CGPointMake(79.71, 484.25) controlPoint1: CGPointMake(78.9, 483.33) controlPoint2: CGPointMake(79.21, 483.84)];
            [bottomFlowerStigmaPath addCurveToPoint: CGPointMake(79.88, 486.08) controlPoint1: CGPointMake(79.55, 485.02) controlPoint2: CGPointMake(79.59, 485.68)];
            [bottomFlowerStigmaPath addCurveToPoint: CGPointMake(81.18, 486.32) controlPoint1: CGPointMake(80.16, 486.48) controlPoint2: CGPointMake(80.63, 486.54)];
            [bottomFlowerStigmaPath addCurveToPoint: CGPointMake(82.23, 487.45) controlPoint1: CGPointMake(81.46, 487.03) controlPoint2: CGPointMake(81.83, 487.45)];
            [bottomFlowerStigmaPath addCurveToPoint: CGPointMake(83.28, 486.32) controlPoint1: CGPointMake(82.63, 487.45) controlPoint2: CGPointMake(82.99, 487.03)];
            [bottomFlowerStigmaPath addCurveToPoint: CGPointMake(84.58, 486.08) controlPoint1: CGPointMake(83.83, 486.54) controlPoint2: CGPointMake(84.3, 486.48)];
            [bottomFlowerStigmaPath addCurveToPoint: CGPointMake(84.76, 484.25) controlPoint1: CGPointMake(84.86, 485.68) controlPoint2: CGPointMake(84.91, 485.02)];
            [bottomFlowerStigmaPath addCurveToPoint: CGPointMake(85.56, 482.77) controlPoint1: CGPointMake(85.25, 483.84) controlPoint2: CGPointMake(85.56, 483.33)];
            [bottomFlowerStigmaPath closePath];
            bottomFlowerStigmaPath.miterLimit = 4;
            
            [stemGreen setFill];
            [bottomFlowerStigmaPath fill];
        }
        
        
        //// middleFlower
        {
            //// Group 12
            {
                //// Bezier 25 Drawing
                UIBezierPath* bezier25Path = [UIBezierPath bezierPath];
                [bezier25Path moveToPoint: CGPointMake(138.24, 244.92)];
                [bezier25Path addLineToPoint: CGPointMake(138.04, 244.03)];
                [bezier25Path addCurveToPoint: CGPointMake(150.54, 239.32) controlPoint1: CGPointMake(139.12, 243.5) controlPoint2: CGPointMake(145.2, 240.58)];
                [bezier25Path addCurveToPoint: CGPointMake(158.32, 221.86) controlPoint1: CGPointMake(150.79, 235.2) controlPoint2: CGPointMake(152.36, 228.88)];
                [bezier25Path addLineToPoint: CGPointMake(158.71, 222.59)];
                [bezier25Path addCurveToPoint: CGPointMake(151.18, 239.18) controlPoint1: CGPointMake(153.02, 229.3) controlPoint2: CGPointMake(151.46, 235.26)];
                [bezier25Path addCurveToPoint: CGPointMake(158.59, 240.39) controlPoint1: CGPointMake(154.58, 238.45) controlPoint2: CGPointMake(157.57, 238.49)];
                [bezier25Path addCurveToPoint: CGPointMake(158.22, 245.37) controlPoint1: CGPointMake(159.22, 241.54) controlPoint2: CGPointMake(159.09, 243.22)];
                [bezier25Path addCurveToPoint: CGPointMake(154.23, 248.89) controlPoint1: CGPointMake(157.2, 247.91) controlPoint2: CGPointMake(155.74, 249.2)];
                [bezier25Path addCurveToPoint: CGPointMake(150.75, 243.59) controlPoint1: CGPointMake(152.63, 248.57) controlPoint2: CGPointMake(151.29, 246.53)];
                [bezier25Path addCurveToPoint: CGPointMake(150.5, 240.31) controlPoint1: CGPointMake(150.63, 242.92) controlPoint2: CGPointMake(150.48, 241.8)];
                [bezier25Path addCurveToPoint: CGPointMake(138.24, 244.92) controlPoint1: CGPointMake(146.07, 241.4) controlPoint2: CGPointMake(140.91, 243.61)];
                [bezier25Path addLineToPoint: CGPointMake(138.24, 244.92)];
                [bezier25Path closePath];
                [bezier25Path moveToPoint: CGPointMake(151.13, 240.16)];
                [bezier25Path addCurveToPoint: CGPointMake(151.36, 243.34) controlPoint1: CGPointMake(151.1, 241.61) controlPoint2: CGPointMake(151.24, 242.7)];
                [bezier25Path addCurveToPoint: CGPointMake(154.32, 247.96) controlPoint1: CGPointMake(151.83, 245.92) controlPoint2: CGPointMake(152.97, 247.69)];
                [bezier25Path addCurveToPoint: CGPointMake(157.68, 244.89) controlPoint1: CGPointMake(155.57, 248.22) controlPoint2: CGPointMake(156.79, 247.1)];
                [bezier25Path addCurveToPoint: CGPointMake(158.1, 240.97) controlPoint1: CGPointMake(158.4, 243.11) controlPoint2: CGPointMake(158.54, 241.79)];
                [bezier25Path addCurveToPoint: CGPointMake(151.13, 240.16) controlPoint1: CGPointMake(157.25, 239.39) controlPoint2: CGPointMake(154.45, 239.42)];
                [bezier25Path addLineToPoint: CGPointMake(151.13, 240.16)];
                [bezier25Path closePath];
                bezier25Path.miterLimit = 4;
                
                [stemGreen setFill];
                [bezier25Path fill];
            }
            
            
            //// Bezier 26 Drawing
            UIBezierPath* bezier26Path = [UIBezierPath bezierPath];
            [bezier26Path moveToPoint: CGPointMake(171.37, 219.65)];
            [bezier26Path addCurveToPoint: CGPointMake(170.94, 213.64) controlPoint1: CGPointMake(172.02, 218.02) controlPoint2: CGPointMake(171.81, 215.88)];
            [bezier26Path addCurveToPoint: CGPointMake(172.39, 207.96) controlPoint1: CGPointMake(172.17, 211.76) controlPoint2: CGPointMake(172.74, 209.76)];
            [bezier26Path addCurveToPoint: CGPointMake(169.11, 204.14) controlPoint1: CGPointMake(172.05, 206.16) controlPoint2: CGPointMake(170.83, 204.85)];
            [bezier26Path addCurveToPoint: CGPointMake(167.31, 198.67) controlPoint1: CGPointMake(169.05, 201.58) controlPoint2: CGPointMake(168.46, 199.59)];
            [bezier26Path addCurveToPoint: CGPointMake(163.1, 199.28) controlPoint1: CGPointMake(166.18, 197.74) controlPoint2: CGPointMake(164.67, 198.04)];
            [bezier26Path addCurveToPoint: CGPointMake(159.11, 197.21) controlPoint1: CGPointMake(161.78, 197.53) controlPoint2: CGPointMake(160.38, 196.72)];
            [bezier26Path addCurveToPoint: CGPointMake(156.44, 201.9) controlPoint1: CGPointMake(157.85, 197.71) controlPoint2: CGPointMake(156.94, 199.43)];
            [bezier26Path addCurveToPoint: CGPointMake(152.59, 204.45) controlPoint1: CGPointMake(154.64, 201.98) controlPoint2: CGPointMake(153.24, 202.82)];
            [bezier26Path addCurveToPoint: CGPointMake(153.03, 210.46) controlPoint1: CGPointMake(151.94, 206.08) controlPoint2: CGPointMake(152.15, 208.22)];
            [bezier26Path addCurveToPoint: CGPointMake(151.57, 216.14) controlPoint1: CGPointMake(151.79, 212.33) controlPoint2: CGPointMake(151.23, 214.34)];
            [bezier26Path addCurveToPoint: CGPointMake(154.86, 219.95) controlPoint1: CGPointMake(151.92, 217.94) controlPoint2: CGPointMake(153.13, 219.25)];
            [bezier26Path addCurveToPoint: CGPointMake(156.65, 225.44) controlPoint1: CGPointMake(154.92, 222.52) controlPoint2: CGPointMake(155.51, 224.51)];
            [bezier26Path addCurveToPoint: CGPointMake(160.87, 224.82) controlPoint1: CGPointMake(157.79, 226.36) controlPoint2: CGPointMake(159.3, 226.06)];
            [bezier26Path addCurveToPoint: CGPointMake(164.85, 226.89) controlPoint1: CGPointMake(162.18, 226.57) controlPoint2: CGPointMake(163.59, 227.38)];
            [bezier26Path addCurveToPoint: CGPointMake(167.53, 222.2) controlPoint1: CGPointMake(166.12, 226.39) controlPoint2: CGPointMake(167.03, 224.66)];
            [bezier26Path addCurveToPoint: CGPointMake(171.37, 219.65) controlPoint1: CGPointMake(169.33, 222.12) controlPoint2: CGPointMake(170.73, 221.28)];
            [bezier26Path closePath];
            [bezier26Path moveToPoint: CGPointMake(165.82, 219.07)];
            [bezier26Path addCurveToPoint: CGPointMake(163.97, 222.31) controlPoint1: CGPointMake(165.47, 220.77) controlPoint2: CGPointMake(164.84, 221.96)];
            [bezier26Path addCurveToPoint: CGPointMake(161.22, 220.88) controlPoint1: CGPointMake(163.09, 222.65) controlPoint2: CGPointMake(162.12, 222.09)];
            [bezier26Path addCurveToPoint: CGPointMake(158.3, 221.3) controlPoint1: CGPointMake(160.13, 221.74) controlPoint2: CGPointMake(159.09, 221.94)];
            [bezier26Path addCurveToPoint: CGPointMake(157.06, 217.51) controlPoint1: CGPointMake(157.51, 220.66) controlPoint2: CGPointMake(157.1, 219.29)];
            [bezier26Path addCurveToPoint: CGPointMake(154.79, 214.88) controlPoint1: CGPointMake(155.87, 217.02) controlPoint2: CGPointMake(155.03, 216.12)];
            [bezier26Path addCurveToPoint: CGPointMake(155.79, 210.95) controlPoint1: CGPointMake(154.55, 213.63) controlPoint2: CGPointMake(154.94, 212.25)];
            [bezier26Path addCurveToPoint: CGPointMake(155.49, 206.8) controlPoint1: CGPointMake(155.19, 209.4) controlPoint2: CGPointMake(155.04, 207.92)];
            [bezier26Path addCurveToPoint: CGPointMake(158.15, 205.03) controlPoint1: CGPointMake(155.94, 205.67) controlPoint2: CGPointMake(156.91, 205.09)];
            [bezier26Path addCurveToPoint: CGPointMake(160, 201.79) controlPoint1: CGPointMake(158.49, 203.33) controlPoint2: CGPointMake(159.12, 202.13)];
            [bezier26Path addCurveToPoint: CGPointMake(162.75, 203.22) controlPoint1: CGPointMake(160.87, 201.45) controlPoint2: CGPointMake(161.85, 202.01)];
            [bezier26Path addCurveToPoint: CGPointMake(165.67, 202.8) controlPoint1: CGPointMake(163.84, 202.36) controlPoint2: CGPointMake(164.88, 202.16)];
            [bezier26Path addCurveToPoint: CGPointMake(166.91, 206.58) controlPoint1: CGPointMake(166.46, 203.43) controlPoint2: CGPointMake(166.87, 204.81)];
            [bezier26Path addCurveToPoint: CGPointMake(169.18, 209.22) controlPoint1: CGPointMake(168.1, 207.07) controlPoint2: CGPointMake(168.94, 207.98)];
            [bezier26Path addCurveToPoint: CGPointMake(168.17, 213.15) controlPoint1: CGPointMake(169.42, 210.47) controlPoint2: CGPointMake(169.03, 211.85)];
            [bezier26Path addCurveToPoint: CGPointMake(168.48, 217.3) controlPoint1: CGPointMake(168.78, 214.7) controlPoint2: CGPointMake(168.92, 216.18)];
            [bezier26Path addCurveToPoint: CGPointMake(165.82, 219.07) controlPoint1: CGPointMake(168.03, 218.43) controlPoint2: CGPointMake(167.06, 219.01)];
            [bezier26Path closePath];
            bezier26Path.miterLimit = 4;
            
            [stemGreen setFill];
            [bezier26Path fill];
            
            
            //// middleFlowerStigma Drawing
            UIBezierPath* middleFlowerStigmaPath = [UIBezierPath bezierPath];
            [middleFlowerStigmaPath moveToPoint: CGPointMake(164.65, 211.19)];
            [middleFlowerStigmaPath addCurveToPoint: CGPointMake(163.86, 209.72) controlPoint1: CGPointMake(164.65, 210.63) controlPoint2: CGPointMake(164.35, 210.11)];
            [middleFlowerStigmaPath addCurveToPoint: CGPointMake(163.68, 207.88) controlPoint1: CGPointMake(164.01, 208.94) controlPoint2: CGPointMake(163.96, 208.27)];
            [middleFlowerStigmaPath addCurveToPoint: CGPointMake(162.38, 207.63) controlPoint1: CGPointMake(163.4, 207.48) controlPoint2: CGPointMake(162.93, 207.42)];
            [middleFlowerStigmaPath addCurveToPoint: CGPointMake(161.33, 206.5) controlPoint1: CGPointMake(162.09, 206.93) controlPoint2: CGPointMake(161.73, 206.5)];
            [middleFlowerStigmaPath addCurveToPoint: CGPointMake(160.28, 207.63) controlPoint1: CGPointMake(160.93, 206.5) controlPoint2: CGPointMake(160.56, 206.93)];
            [middleFlowerStigmaPath addCurveToPoint: CGPointMake(158.98, 207.88) controlPoint1: CGPointMake(159.73, 207.42) controlPoint2: CGPointMake(159.26, 207.48)];
            [middleFlowerStigmaPath addCurveToPoint: CGPointMake(158.8, 209.72) controlPoint1: CGPointMake(158.7, 208.28) controlPoint2: CGPointMake(158.65, 208.94)];
            [middleFlowerStigmaPath addCurveToPoint: CGPointMake(158, 211.19) controlPoint1: CGPointMake(158.3, 210.11) controlPoint2: CGPointMake(158, 210.63)];
            [middleFlowerStigmaPath addCurveToPoint: CGPointMake(158.8, 212.66) controlPoint1: CGPointMake(158, 211.75) controlPoint2: CGPointMake(158.3, 212.27)];
            [middleFlowerStigmaPath addCurveToPoint: CGPointMake(158.98, 214.5) controlPoint1: CGPointMake(158.65, 213.44) controlPoint2: CGPointMake(158.7, 214.1)];
            [middleFlowerStigmaPath addCurveToPoint: CGPointMake(160.28, 214.74) controlPoint1: CGPointMake(159.26, 214.9) controlPoint2: CGPointMake(159.73, 214.96)];
            [middleFlowerStigmaPath addCurveToPoint: CGPointMake(161.33, 215.87) controlPoint1: CGPointMake(160.56, 215.44) controlPoint2: CGPointMake(160.93, 215.87)];
            [middleFlowerStigmaPath addCurveToPoint: CGPointMake(162.38, 214.74) controlPoint1: CGPointMake(161.73, 215.87) controlPoint2: CGPointMake(162.09, 215.44)];
            [middleFlowerStigmaPath addCurveToPoint: CGPointMake(163.68, 214.5) controlPoint1: CGPointMake(162.93, 214.96) controlPoint2: CGPointMake(163.4, 214.9)];
            [middleFlowerStigmaPath addCurveToPoint: CGPointMake(163.85, 212.66) controlPoint1: CGPointMake(163.96, 214.1) controlPoint2: CGPointMake(164.01, 213.44)];
            [middleFlowerStigmaPath addCurveToPoint: CGPointMake(164.65, 211.19) controlPoint1: CGPointMake(164.35, 212.27) controlPoint2: CGPointMake(164.65, 211.75)];
            [middleFlowerStigmaPath closePath];
            middleFlowerStigmaPath.miterLimit = 4;
            
            [stemGreen setFill];
            [middleFlowerStigmaPath fill];
        }
        
        
        //// topFlower
        {
            //// Group 14
            {
                //// Bezier 27 Drawing
                UIBezierPath* bezier27Path = [UIBezierPath bezierPath];
                [bezier27Path moveToPoint: CGPointMake(227.22, 99.7)];
                [bezier27Path addLineToPoint: CGPointMake(227.01, 98.81)];
                [bezier27Path addCurveToPoint: CGPointMake(240.08, 94.06) controlPoint1: CGPointMake(228.14, 98.27) controlPoint2: CGPointMake(234.5, 95.33)];
                [bezier27Path addCurveToPoint: CGPointMake(248.21, 76.44) controlPoint1: CGPointMake(240.34, 89.9) controlPoint2: CGPointMake(241.98, 83.52)];
                [bezier27Path addLineToPoint: CGPointMake(248.62, 77.18)];
                [bezier27Path addCurveToPoint: CGPointMake(240.74, 93.91) controlPoint1: CGPointMake(242.67, 83.95) controlPoint2: CGPointMake(241.04, 89.96)];
                [bezier27Path addCurveToPoint: CGPointMake(248.5, 95.13) controlPoint1: CGPointMake(244.3, 93.18) controlPoint2: CGPointMake(247.43, 93.21)];
                [bezier27Path addCurveToPoint: CGPointMake(248.11, 100.16) controlPoint1: CGPointMake(249.15, 96.3) controlPoint2: CGPointMake(249.02, 97.99)];
                [bezier27Path addCurveToPoint: CGPointMake(243.94, 103.71) controlPoint1: CGPointMake(247.04, 102.72) controlPoint2: CGPointMake(245.52, 104.02)];
                [bezier27Path addCurveToPoint: CGPointMake(240.3, 98.35) controlPoint1: CGPointMake(242.26, 103.38) controlPoint2: CGPointMake(240.87, 101.33)];
                [bezier27Path addCurveToPoint: CGPointMake(240.04, 95.05) controlPoint1: CGPointMake(240.17, 97.69) controlPoint2: CGPointMake(240.02, 96.55)];
                [bezier27Path addCurveToPoint: CGPointMake(227.22, 99.7) controlPoint1: CGPointMake(235.41, 96.15) controlPoint2: CGPointMake(230.01, 98.38)];
                [bezier27Path addLineToPoint: CGPointMake(227.22, 99.7)];
                [bezier27Path closePath];
                [bezier27Path moveToPoint: CGPointMake(240.7, 94.9)];
                [bezier27Path addCurveToPoint: CGPointMake(240.93, 98.11) controlPoint1: CGPointMake(240.66, 96.36) controlPoint2: CGPointMake(240.81, 97.46)];
                [bezier27Path addCurveToPoint: CGPointMake(244.03, 102.77) controlPoint1: CGPointMake(241.43, 100.71) controlPoint2: CGPointMake(242.62, 102.5)];
                [bezier27Path addCurveToPoint: CGPointMake(247.55, 99.67) controlPoint1: CGPointMake(245.33, 103.03) controlPoint2: CGPointMake(246.62, 101.9)];
                [bezier27Path addCurveToPoint: CGPointMake(247.98, 95.72) controlPoint1: CGPointMake(248.3, 97.87) controlPoint2: CGPointMake(248.44, 96.55)];
                [bezier27Path addCurveToPoint: CGPointMake(240.7, 94.9) controlPoint1: CGPointMake(247.09, 94.12) controlPoint2: CGPointMake(244.16, 94.15)];
                [bezier27Path addLineToPoint: CGPointMake(240.7, 94.9)];
                [bezier27Path closePath];
                bezier27Path.miterLimit = 4;
                
                [stemGreen setFill];
                [bezier27Path fill];
            }
            
            
            //// Bezier 28 Drawing
            UIBezierPath* bezier28Path = [UIBezierPath bezierPath];
            [bezier28Path moveToPoint: CGPointMake(261.3, 74.59)];
            [bezier28Path addCurveToPoint: CGPointMake(260.85, 68.61) controlPoint1: CGPointMake(261.97, 72.97) controlPoint2: CGPointMake(261.75, 70.84)];
            [bezier28Path addCurveToPoint: CGPointMake(262.35, 62.95) controlPoint1: CGPointMake(262.12, 66.74) controlPoint2: CGPointMake(262.71, 64.75)];
            [bezier28Path addCurveToPoint: CGPointMake(258.97, 59.15) controlPoint1: CGPointMake(261.99, 61.16) controlPoint2: CGPointMake(260.74, 59.86)];
            [bezier28Path addCurveToPoint: CGPointMake(257.12, 53.7) controlPoint1: CGPointMake(258.9, 56.6) controlPoint2: CGPointMake(258.3, 54.62)];
            [bezier28Path addCurveToPoint: CGPointMake(252.79, 54.31) controlPoint1: CGPointMake(255.95, 52.78) controlPoint2: CGPointMake(254.4, 53.07)];
            [bezier28Path addCurveToPoint: CGPointMake(248.69, 52.25) controlPoint1: CGPointMake(251.44, 52.56) controlPoint2: CGPointMake(249.99, 51.76)];
            [bezier28Path addCurveToPoint: CGPointMake(245.93, 56.92) controlPoint1: CGPointMake(247.39, 52.74) controlPoint2: CGPointMake(246.45, 54.46)];
            [bezier28Path addCurveToPoint: CGPointMake(241.98, 59.46) controlPoint1: CGPointMake(244.08, 57) controlPoint2: CGPointMake(242.65, 57.84)];
            [bezier28Path addCurveToPoint: CGPointMake(242.43, 65.45) controlPoint1: CGPointMake(241.31, 61.08) controlPoint2: CGPointMake(241.53, 63.21)];
            [bezier28Path addCurveToPoint: CGPointMake(240.93, 71.1) controlPoint1: CGPointMake(241.16, 67.31) controlPoint2: CGPointMake(240.57, 69.3)];
            [bezier28Path addCurveToPoint: CGPointMake(244.31, 74.9) controlPoint1: CGPointMake(241.29, 72.89) controlPoint2: CGPointMake(242.53, 74.19)];
            [bezier28Path addCurveToPoint: CGPointMake(246.15, 80.36) controlPoint1: CGPointMake(244.37, 77.45) controlPoint2: CGPointMake(244.98, 79.44)];
            [bezier28Path addCurveToPoint: CGPointMake(250.49, 79.74) controlPoint1: CGPointMake(247.33, 81.27) controlPoint2: CGPointMake(248.87, 80.98)];
            [bezier28Path addCurveToPoint: CGPointMake(254.59, 81.8) controlPoint1: CGPointMake(251.84, 81.49) controlPoint2: CGPointMake(253.29, 82.3)];
            [bezier28Path addCurveToPoint: CGPointMake(257.34, 77.14) controlPoint1: CGPointMake(255.89, 81.31) controlPoint2: CGPointMake(256.83, 79.59)];
            [bezier28Path addCurveToPoint: CGPointMake(261.3, 74.59) controlPoint1: CGPointMake(259.19, 77.05) controlPoint2: CGPointMake(260.63, 76.21)];
            [bezier28Path closePath];
            [bezier28Path moveToPoint: CGPointMake(255.58, 74.01)];
            [bezier28Path addCurveToPoint: CGPointMake(253.68, 77.24) controlPoint1: CGPointMake(255.23, 75.71) controlPoint2: CGPointMake(254.58, 76.9)];
            [bezier28Path addCurveToPoint: CGPointMake(250.85, 75.81) controlPoint1: CGPointMake(252.78, 77.58) controlPoint2: CGPointMake(251.78, 77.02)];
            [bezier28Path addCurveToPoint: CGPointMake(247.85, 76.24) controlPoint1: CGPointMake(249.73, 76.67) controlPoint2: CGPointMake(248.66, 76.88)];
            [bezier28Path addCurveToPoint: CGPointMake(246.57, 72.46) controlPoint1: CGPointMake(247.04, 75.6) controlPoint2: CGPointMake(246.62, 74.23)];
            [bezier28Path addCurveToPoint: CGPointMake(244.24, 69.84) controlPoint1: CGPointMake(245.35, 71.98) controlPoint2: CGPointMake(244.49, 71.08)];
            [bezier28Path addCurveToPoint: CGPointMake(245.27, 65.93) controlPoint1: CGPointMake(243.99, 68.6) controlPoint2: CGPointMake(244.4, 67.22)];
            [bezier28Path addCurveToPoint: CGPointMake(244.96, 61.79) controlPoint1: CGPointMake(244.65, 64.39) controlPoint2: CGPointMake(244.5, 62.91)];
            [bezier28Path addCurveToPoint: CGPointMake(247.69, 60.04) controlPoint1: CGPointMake(245.42, 60.67) controlPoint2: CGPointMake(246.41, 60.09)];
            [bezier28Path addCurveToPoint: CGPointMake(249.6, 56.81) controlPoint1: CGPointMake(248.05, 58.34) controlPoint2: CGPointMake(248.7, 57.15)];
            [bezier28Path addCurveToPoint: CGPointMake(252.43, 58.23) controlPoint1: CGPointMake(250.5, 56.47) controlPoint2: CGPointMake(251.5, 57.03)];
            [bezier28Path addCurveToPoint: CGPointMake(255.43, 57.81) controlPoint1: CGPointMake(253.55, 57.38) controlPoint2: CGPointMake(254.62, 57.18)];
            [bezier28Path addCurveToPoint: CGPointMake(256.7, 61.58) controlPoint1: CGPointMake(256.24, 58.45) controlPoint2: CGPointMake(256.66, 59.82)];
            [bezier28Path addCurveToPoint: CGPointMake(259.04, 64.21) controlPoint1: CGPointMake(257.93, 62.07) controlPoint2: CGPointMake(258.79, 62.97)];
            [bezier28Path addCurveToPoint: CGPointMake(258.01, 68.12) controlPoint1: CGPointMake(259.29, 65.45) controlPoint2: CGPointMake(258.88, 66.83)];
            [bezier28Path addCurveToPoint: CGPointMake(258.31, 72.26) controlPoint1: CGPointMake(258.63, 69.66) controlPoint2: CGPointMake(258.78, 71.14)];
            [bezier28Path addCurveToPoint: CGPointMake(255.58, 74.01) controlPoint1: CGPointMake(257.86, 73.38) controlPoint2: CGPointMake(256.86, 73.95)];
            [bezier28Path closePath];
            bezier28Path.miterLimit = 4;
            
            [stemGreen setFill];
            [bezier28Path fill];
            
            
            //// topFlowerStigma Drawing
            UIBezierPath* topFlowerStigmaPath = [UIBezierPath bezierPath];
            [topFlowerStigmaPath moveToPoint: CGPointMake(254.95, 67.1)];
            [topFlowerStigmaPath addCurveToPoint: CGPointMake(254.15, 65.63) controlPoint1: CGPointMake(254.95, 66.54) controlPoint2: CGPointMake(254.65, 66.03)];
            [topFlowerStigmaPath addCurveToPoint: CGPointMake(253.98, 63.79) controlPoint1: CGPointMake(254.3, 64.85) controlPoint2: CGPointMake(254.26, 64.19)];
            [topFlowerStigmaPath addCurveToPoint: CGPointMake(252.67, 63.55) controlPoint1: CGPointMake(253.7, 63.39) controlPoint2: CGPointMake(253.22, 63.33)];
            [topFlowerStigmaPath addCurveToPoint: CGPointMake(251.63, 62.42) controlPoint1: CGPointMake(252.39, 62.85) controlPoint2: CGPointMake(252.02, 62.42)];
            [topFlowerStigmaPath addCurveToPoint: CGPointMake(250.58, 63.55) controlPoint1: CGPointMake(251.23, 62.42) controlPoint2: CGPointMake(250.86, 62.85)];
            [topFlowerStigmaPath addCurveToPoint: CGPointMake(249.27, 63.79) controlPoint1: CGPointMake(250.03, 63.33) controlPoint2: CGPointMake(249.56, 63.39)];
            [topFlowerStigmaPath addCurveToPoint: CGPointMake(249.1, 65.63) controlPoint1: CGPointMake(248.99, 64.19) controlPoint2: CGPointMake(248.95, 64.85)];
            [topFlowerStigmaPath addCurveToPoint: CGPointMake(248.3, 67.1) controlPoint1: CGPointMake(248.6, 66.02) controlPoint2: CGPointMake(248.3, 66.54)];
            [topFlowerStigmaPath addCurveToPoint: CGPointMake(249.1, 68.58) controlPoint1: CGPointMake(248.3, 67.67) controlPoint2: CGPointMake(248.6, 68.18)];
            [topFlowerStigmaPath addCurveToPoint: CGPointMake(249.27, 70.41) controlPoint1: CGPointMake(248.95, 69.35) controlPoint2: CGPointMake(248.99, 70.02)];
            [topFlowerStigmaPath addCurveToPoint: CGPointMake(250.58, 70.66) controlPoint1: CGPointMake(249.56, 70.81) controlPoint2: CGPointMake(250.03, 70.87)];
            [topFlowerStigmaPath addCurveToPoint: CGPointMake(251.63, 71.78) controlPoint1: CGPointMake(250.86, 71.36) controlPoint2: CGPointMake(251.23, 71.78)];
            [topFlowerStigmaPath addCurveToPoint: CGPointMake(252.67, 70.66) controlPoint1: CGPointMake(252.02, 71.78) controlPoint2: CGPointMake(252.39, 71.36)];
            [topFlowerStigmaPath addCurveToPoint: CGPointMake(253.97, 70.41) controlPoint1: CGPointMake(253.22, 70.87) controlPoint2: CGPointMake(253.7, 70.81)];
            [topFlowerStigmaPath addCurveToPoint: CGPointMake(254.15, 68.58) controlPoint1: CGPointMake(254.26, 70.02) controlPoint2: CGPointMake(254.3, 69.35)];
            [topFlowerStigmaPath addCurveToPoint: CGPointMake(254.95, 67.1) controlPoint1: CGPointMake(254.65, 68.18) controlPoint2: CGPointMake(254.95, 67.67)];
            [topFlowerStigmaPath closePath];
            topFlowerStigmaPath.miterLimit = 4;
            
            [stemGreen setFill];
            [topFlowerStigmaPath fill];
        }
    }
    
    
    //// Cleanup
    CGGradientRelease(sVGID_1_);
    CGColorSpaceRelease(colorSpace);
    

}

@end
