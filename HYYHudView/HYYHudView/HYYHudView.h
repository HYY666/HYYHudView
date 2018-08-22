//
//  HYYHudView.h
//  reader
//
//  Created by huang on 17/4/18.
//  Copyright © 2017年 juyu. All rights reserved.
//

#import <UIKit/UIKit.h>


#if __IPHONE_OS_VERSION_MAX_ALLOWED >= 100000
@interface HYYHudView : UIView<CAAnimationDelegate>
#else
@interface HYYHudView : UIView
#endif

{
    UIFont *msgFont;
}
@property (nonatomic, copy)   NSString *msg;
@property (nonatomic, retain) UILabel  *labelText;
@property (nonatomic, assign) float leftMargin;
@property (nonatomic, assign) float topMargin;
@property (nonatomic, assign) float animationLeftScale;
@property (nonatomic, assign) float animationTopScale;
@property (nonatomic, assign) float totalDuration;

+ (void)showMsg:(NSString *)msg inView:(UIView*)theView;

+ (void)showMsg:(NSString *)msg duration:(float)duration inView:(UIView*)theView;


@end
