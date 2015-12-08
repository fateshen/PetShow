//
//  macro.h
//  PetShow
//
//  Created by Apple on 15/10/25.
//  Copyright © 2015年 Apple. All rights reserved.
//

//

#ifndef Vanpeople_IOS_macro_h
#define Vanpeople_IOS_macro_h

////获取当前屏幕宽高
#define KDeviceW [UIScreen mainScreen].bounds.size.width        //屏幕宽
#define KDeviceH [UIScreen mainScreen].bounds.size.height      //屏幕高


#define RGB(r,g,b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.00f]




/**
 *  1 判断是否为3.5inch      320*480
 */
#define SCREEN35 ([UIScreen mainScreen].bounds.size.height == 480)
/**
 *  2 判断是否为4inch        640*1136
 */
#define SCREEN4 ([UIScreen mainScreen].bounds.size.height == 568)
/**
 *  3 判断是否为4.7inch   375*667   750*1334
 */
#define SCREEN47 ([UIScreen mainScreen].bounds.size.height == 667)
/**
 *  4 判断是否为5.5inch   414*736   1242*2208
 */
#define SCREEN55 ([UIScreen mainScreen].bounds.size.height == 736)

#endif
